import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 55),
              child: Row(
                children: [
                  const Image(
                    image: AssetImage("lib/assets/images/logo.png"),
                    height: 100,
                    width: 100,
                  ),
                  Text(
                    'RoTM',
                    style: GoogleFonts.getFont(
                      'Orbitron',
                      fontSize: 60,
                      color: const Color.fromARGB(255, 51, 1, 117),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Lottie.asset(
                "lib/assets/others/Animation - 1704720876228.json",
                height: 500,
                width: 500,
              ),
            ),
            Text("Overall health of the user",
                style: GoogleFonts.getFont(
                  'Orbitron',
                  fontSize: 15,
                  color: const Color.fromARGB(255, 51, 1, 117),
                  fontWeight: FontWeight.bold,
                )), //Include fonts and all
          ],
        ),
      ),
    );
  }
}
