import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserReportAnalysisBot extends StatelessWidget {
  const UserReportAnalysisBot({super.key});

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
          color: const Color.fromARGB(234, 255, 242, 0),
        ),
        height: 100,
        width: 100,
        child: Column(
          children: [
            Image.asset(
              "lib/assets/animated/turing-test-unscreen.gif",
              height: 110,
              width: 110,
            ),
            Center(
              child: Row(
                children: [
                  const SizedBox(
                    width: 35,
                  ),
                  Column(
                    children: [
                      Text(
                        "REPORT",
                        style: GoogleFonts.getFont(
                          'Orbitron',
                          fontSize: 19,
                          color: const Color.fromARGB(255, 0, 0, 0),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Center(
                        child: Text(
                          "ANALYSIS",
                          style: GoogleFonts.getFont(
                            'Orbitron',
                            fontSize: 19,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
