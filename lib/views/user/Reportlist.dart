import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserReportSection extends StatefulWidget {
  const UserReportSection({super.key});

  @override
  State<UserReportSection> createState() => _UserReportSectionState();
}

class _UserReportSectionState extends State<UserReportSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              height: 95,
              width: MediaQuery.of(context).size.width,
              child: Text("20-FEB-2024",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Orbitron',
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              height: 95,
              width: MediaQuery.of(context).size.width,
              child: Text("19-MAR-2024",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Orbitron',
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Card(
          child: Align(
            alignment: Alignment.center,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(255, 0, 0, 0),
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              height: 95,
              width: MediaQuery.of(context).size.width,
              child: Text("18-APR-2024",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Orbitron',
                    fontSize: 15,
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ),
        ),
      ],
    );
  }
}
