import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/models/userdata.dart';

class UserRespirationRateChart extends StatefulWidget {
  const UserRespirationRateChart({super.key});

  @override
  State<UserRespirationRateChart> createState() =>
      _UserRespirationRateChartState();
}

class _UserRespirationRateChartState extends State<UserRespirationRateChart> {
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
              padding: const EdgeInsets.only(left: 0, top: 0),
              child: Image.asset("lib/assets/animated/wind.gif",
                  height: 45, width: 46),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text("BREATHE",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  Text("RATE",
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
        Text(
            ((UserRespData[0].toDouble() +
                        UserRespData[1].toDouble() +
                        UserRespData[2].toDouble() +
                        UserRespData[3].toDouble()) /
                    4)
                .toString(),
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
