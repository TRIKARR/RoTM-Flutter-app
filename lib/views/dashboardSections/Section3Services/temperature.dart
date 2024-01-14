import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserTemperature extends StatefulWidget {
  const UserTemperature({super.key});

  @override
  State<UserTemperature> createState() => _UserTemperatureState();
}

class _UserTemperatureState extends State<UserTemperature> {
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
        Text("AVERAGE",
            style: GoogleFonts.getFont(
              'Orbitron',
              fontSize: 15,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            )),
        Text("25",
            style: GoogleFonts.getFont(
              'Orbitron',
              fontSize: 25,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            )),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text("MIN:X",
                  style: GoogleFonts.getFont(
                    'Orbitron',
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text("MAX:X",
                  style: GoogleFonts.getFont(
                    'Orbitron',
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        )
      ],
    );
  }
}
