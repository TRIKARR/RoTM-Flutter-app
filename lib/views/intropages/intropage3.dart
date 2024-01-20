import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});

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
                      fontSize: 65,
                      color: const Color.fromARGB(255, 51, 1, 117),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(.0),
              child: Lottie.asset(
                "lib/assets/others/Animation - 1704723249309.json",
                height: MediaQuery.of(context).size.height - 500,
                width: 500,
              ),
            ),
            Center(
              child: Text("Get a weekly report of your overall health",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Orbitron',
                    fontSize: 25,
                    color: const Color.fromARGB(255, 51, 1, 117),
                    fontWeight: FontWeight.bold,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
