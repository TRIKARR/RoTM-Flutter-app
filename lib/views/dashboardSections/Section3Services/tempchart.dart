import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserTemperatureGraph extends StatefulWidget {
  const UserTemperatureGraph({super.key});

  @override
  State<UserTemperatureGraph> createState() => _UserTemperatureGraphState();
}

class _UserTemperatureGraphState extends State<UserTemperatureGraph> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 0),
              child: Image.asset("lib/assets/images/rate.gif",
                  height: 45, width: 40),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text("TEMPERATURE TREND",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ],
        ),
        const Row(
          children: [
            SizedBox(
              width: 5,
            ),
            Column(
              children: [
                Center(
                    child: Text("32",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 0, 0, 0)))),
                Text("°C",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 0, 0, 0))),
              ],
            ),
          ],
        )
      ],
    );
  }
}
