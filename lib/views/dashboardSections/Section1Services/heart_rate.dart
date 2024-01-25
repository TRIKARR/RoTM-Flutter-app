// ignore_for_file: unused_import
import "package:http/http.dart" as http;
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/userdata.dart';

class UserHeartPulse extends StatefulWidget {
  const UserHeartPulse({super.key});

  @override
  State<UserHeartPulse> createState() => _UserHeartPulseState();
}

class _UserHeartPulseState extends State<UserHeartPulse> {
  void postRequest() async {
    var url = Uri.parse('http://192.168.0.241:3000/data');
    var response = await http.get(url);
    // ignore: avoid_print
    print(response.body.toString());
  }

  @override
  void initState() {
    super.initState();
    postRequest();
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
              child: Image.asset("lib/assets/animated/heartbeat.gif",
                  height: 40, width: 45),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text("HEART",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  Text("PULSE",
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
          height: 5,
        ),
        Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text("REGULAR",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text(UserPulseData.toInt().toString(),
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 3.0),
                  child: Text("BPM",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                ),
              ],
            ),
            const SizedBox(
              width: 4,
            ),
            Container(
                height: 70,
                width: 60,
                color: const Color.fromARGB(255, 255, 255, 255),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 247, 0, 0),
                      ),
                      height: 17.5,
                      width: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 4, 255, 0),
                      ),
                      height: 17.5,
                      width: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 0, 149, 255),
                      ),
                      height: 17.5,
                      width: 60,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(5),
                        color: const Color.fromARGB(255, 170, 0, 255),
                      ),
                      height: 17.5,
                      width: 60,
                    ),
                  ],
                )),
          ],
        ),
      ],
    );
  }
}
