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
                height: MediaQuery.of(context).size.height - 500,
                width: 500,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                    "We believe in overall well-being and health status of the user",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Orbitron',
                      fontSize: 23,
                      color: const Color.fromARGB(255, 51, 1, 117),
                      fontWeight: FontWeight.bold,
                    )),
              ),
            ), //Include fonts and all
          ],
        ),
      ),
    );
  }
}
