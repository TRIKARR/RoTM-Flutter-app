import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiagnosisService extends StatelessWidget {
  const DiagnosisService({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(255, 0, 0, 0),
            width: 4,
          ),
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromARGB(255, 255, 0, 0),
        ),
        height: 100,
        width: 100,
        child: Column(
          children: [
            Image.asset(
              "lib/assets/animated/decision-making-unscreen.gif",
              height: 110,
              width: MediaQuery.of(context).size.width,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 25,
                ),
                Column(
                  children: [
                    Text(
                      "CLINICAL",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Center(
                      child: Text(
                        "DIAGNOSIS",
                        style: GoogleFonts.getFont(
                          'Orbitron',
                          fontSize: 20,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
