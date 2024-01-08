import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Page2 extends StatelessWidget {
  const Page2({super.key});

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
            const SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Lottie.asset(
                "lib/assets/others/Animation - 1704722115199.json",
                height: 400,
                width: 400,
              ),
            ),
            Text("Interactive desktop robot to help you",
                style: GoogleFonts.getFont(
                  'Orbitron',
                  fontSize: 15,
                  color: const Color.fromARGB(255, 51, 1, 117),
                  fontWeight: FontWeight.bold,
                )
              )
          ],
        ),
      ),
    );
  }
}
