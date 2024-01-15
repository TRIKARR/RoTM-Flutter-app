import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';

class UserInteractionMenu extends StatefulWidget {
  const UserInteractionMenu({super.key});

  @override
  State<UserInteractionMenu> createState() => _UserInteractionMenuState();
}

class _UserInteractionMenuState extends State<UserInteractionMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                elevation: 40,
                child: Container(
                  height: 295,
                  width: 410,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "RoTM STATS",
                          style: GoogleFonts.getFont(
                            'Orbitron',
                            fontSize: 20,
                            color: const Color.fromARGB(255, 0, 0, 0),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Container(
                            height: 245,
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  color: Colors.amber,
                                  height: 150,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 0.0),
                                    child: Lottie.asset(
                                      "lib/assets/others/togother.json",
                                      height: 200,
                                      width: 190,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 30),
                                  child: Text(
                                    "BOND LEVEL: X",
                                    style: GoogleFonts.getFont(
                                      'Orbitron',
                                      fontSize: 12,
                                      color: const Color.fromARGB(255, 0, 0, 0),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 10.0),
                                  child: SizedBox(
                                    height: 8,
                                    child: LinearPercentIndicator(
                                      animation: true,
                                      width: 150,
                                      lineHeight: 8.0,
                                      percent: 0.4,
                                      backgroundColor: Colors.grey.shade500,
                                      progressColor:
                                          const Color.fromARGB(255, 20, 0, 235),
                                    ),
                                  ),
                                ),

                                // CircularProgressIndicator(),
                              ],
                            ),
                          ),
                          Container(
                            color: const Color.fromARGB(255, 24, 216, 216),
                            height: 245,
                            width: 195,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 82,
                                      width: 195,
                                      color: const Color.fromARGB(
                                          255, 9, 255, 140),
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "lib/assets/images/logician.png"),
                                          const Column(
                                            children: [
                                              Center(
                                                child: Text("PERSONALITY"),
                                              ),
                                              Center(
                                                child: Text("PERSONALITY"),
                                              ),
                                              Center(
                                                child: Text("PERSONALITY"),
                                              ),
                                              Center(
                                                child: Text("PERSONALITY"),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 82,
                                      width: 195,
                                      color: const Color.fromARGB(
                                          255, 0, 115, 255),
                                      child: Row(
                                        children: [
                                          const SizedBox(
                                            width: 29.5,
                                          ),
                                          const Column(
                                            children: [
                                              Center(
                                                child: Text("MOOD"),
                                              ),
                                              Center(
                                                child: Text("MOOD"),
                                              ),
                                              Center(
                                                child: Text("MOOD"),
                                              ),
                                              Center(
                                                child: Text("MOOD"),
                                              )
                                            ],
                                          ),
                                          const SizedBox(
                                            width: 33.5,
                                          ),
                                          Image.asset(
                                            "lib/assets/animated/smile.gif",
                                            width: 86.58,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 195,
                                      color:
                                          const Color.fromARGB(255, 255, 0, 0),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
