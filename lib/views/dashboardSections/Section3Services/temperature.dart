import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/userdata.dart';

class UserTemperature extends StatefulWidget {
  const UserTemperature({super.key});

  @override
  State<UserTemperature> createState() => _UserTemperatureState();
}

class _UserTemperatureState extends State<UserTemperature> {
  // ignore: non_constant_identifier_names
  void ExtractUserRequest() async {
    var url = Uri.parse('${EndPoint}extract');
    var queryParams = {"id": BRoTM_UserID};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var repoData = responseData["report"];
    var temp = responseData["temp"];
    var resp = responseData["resp"];
    // Store the "temp" array in a variable
    UserRespData = resp;
    UserTempData = temp;
    UserRepoData = repoData;
    // ignore: avoid_print
    print(queryParams.toString());
  }

  @override
  void initState() {
    super.initState();
    ExtractUserRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 0),
              child: Image.asset("lib/assets/animated/thermometer.gif",
                  height: 45, width: 40),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text("BODY",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  Text("TEMPRATURE",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
          ],
        ),
        Row(
          children: [
            const SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Center(
                    child: Text(
                        (((UserTempData[0].toDouble() +
                                    UserTempData[1].toDouble() +
                                    UserTempData[2].toDouble() +
                                    UserTempData[3].toDouble()) /
                                4))
                            .toInt()
                            .toString(),
                        style: const TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)))),
                const Text("°C",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0))),
              ],
            ),
            Column(
              children: [
                Image.asset("lib/assets/images/thermometer.png",
                    height: 55, width: 45)
              ],
            ),
            const Column(
              children: [
                Center(
                    child: Text("40°C",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.red))),
                Center(
                    child: Text("35°C",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange))),
                Center(
                    child: Text("30°C",
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 115, 215)))),
              ],
            ),
          ],
        )
      ],
    );
  }
}
