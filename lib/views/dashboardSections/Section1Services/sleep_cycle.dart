// ignore_for_file: non_constant_identifier_names

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../userdata.dart';

class UserSleepCycle extends StatefulWidget {
  const UserSleepCycle({super.key});

  @override
  State<UserSleepCycle> createState() => _UserSleepCycleState();
}

class _UserSleepCycleState extends State<UserSleepCycle> {
  void ExtractUserRequest() async {
    var url = Uri.parse('${EndPoint}extract');
    var queryParams = {"id": BRoTM_UserID};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var repoData = responseData["report"];
    var temp = responseData["temp"];
    var resp = responseData["resp"];
    var sleep = responseData["sleep"];
    var pulse = responseData["pulse"];
    var oxy = responseData["oxy"];
    // Store the "temp" array in a variable
    UserRespData = resp;
    UserTempData = temp;
    UserRepoData = repoData;
    UserOxyData = oxy.toDouble();
    UserPulseData = pulse.toDouble();
    UserSleepData = sleep.toDouble();

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
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 4.0),
              child: Image.asset("lib/assets/animated/sleep.gif",
                  height: 40, width: 45),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text("SLEEP",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  Text("CYCLE",
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
        const SizedBox(
          height: 10,
        ),
        Center(
          child: AnimatedRadialGauge(
            value: UserSleepData.toDouble(),
            duration: const Duration(seconds: 2),
            curve: Curves.elasticOut,
            radius: 50,
            axis: const GaugeAxis(
              min: 0,
              max: 100,
              degrees: 180,
              style: GaugeAxisStyle(
                thickness: 20,
                background: Color.fromARGB(255, 255, 255, 255),
                segmentSpacing: 2,
              ),
              pointer: GaugePointer.circle(
                radius: 8,
                color: Color.fromARGB(255, 0, 225, 255),
                border: GaugePointerBorder(color: Colors.black, width: 2),
              ),
              progressBar: GaugeProgressBar.basic(
                color: Colors.transparent,
              ),
              segments: [
                GaugeSegment(
                  from: 0,
                  to: 25,
                  color: Color.fromARGB(255, 255, 1, 1),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 25,
                  to: 50,
                  color: Color.fromARGB(255, 255, 149, 0),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 50,
                  to: 75,
                  color: Color.fromARGB(255, 8, 136, 255),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 75,
                  to: 100,
                  color: Color.fromARGB(255, 68, 255, 0),
                  cornerRadius: Radius.zero,
                ),
              ],
            ),
            builder: (context, child, value) => RadialGaugeLabel(
              value: value,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text("BAD",
            style: GoogleFonts.getFont(
              'Orbitron',
              fontSize: 10,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
