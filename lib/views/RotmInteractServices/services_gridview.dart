import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InteractiveServices extends StatefulWidget {
  const InteractiveServices({super.key});

  @override
  State<InteractiveServices> createState() => _InteractiveServicesState();
}

class _InteractiveServicesState extends State<InteractiveServices> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Padding(
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
                  width: 110,
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
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 4,
              ),
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromARGB(255, 0, 255, 132),
            ),
            height: 100,
            width: 100,
            child: Column(
              children: [
                Image.asset(
                  "lib/assets/animated/learning-unscreen.gif",
                  height: 110,
                  width: 110,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Text(
                          "HEALTH",
                          style: GoogleFonts.getFont(
                            'Orbitron',
                            fontSize: 19,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Text(
                            "INFORMATION",
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
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 4,
                ),
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(255, 0, 221, 255),
              ),
              height: 100,
              width: 100,
              child: Column(
                children: [
                  Image.asset(
                    "lib/assets/animated/chat-bot-unscreen.gif",
                    height: 110,
                    width: 110,
                  ),
                  Center(
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 40,
                        ),
                        Column(
                          children: [
                            Text(
                              "HEALTH",
                              style: GoogleFonts.getFont(
                                'Orbitron',
                                fontSize: 19,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Center(
                              child: Text(
                                "BOT",
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
              )),
        ),
        Padding(
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
        ),
      ],
    );
  }
}
