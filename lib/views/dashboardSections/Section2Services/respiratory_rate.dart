import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserRespirationRate extends StatefulWidget {
  const UserRespirationRate({super.key});

  @override
  State<UserRespirationRate> createState() => _UserRespirationRateState();
}

class _UserRespirationRateState extends State<UserRespirationRate> {
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
              child: Image.asset("lib/assets/animated/lungs.gif",
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
    ;
  }
}