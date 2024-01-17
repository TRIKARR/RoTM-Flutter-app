// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class ROTMStatCard extends StatefulWidget {
  const ROTMStatCard({super.key});

  @override
  State<ROTMStatCard> createState() => _ROTMStatCardState();
}

class _ROTMStatCardState extends State<ROTMStatCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 90,
        child: Padding(
          padding: const EdgeInsets.only(left: 0.5),
          child: Container(
            height: 293,
            width: 410,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
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
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.black,
                          width: 1, // Adjust the width of the border as needed
                        ),
                        color: Colors.cyanAccent,
                      ),
                      height: 245,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width:
                                    1, // Adjust the width of the border as needed
                              ),
                              color: Colors.amber,
                            ),
                            height: 162,
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
                            padding: const EdgeInsets.only(right: 10),
                            child: Text(
                              "BRoTM NAME : NALLU",
                              style: GoogleFonts.getFont(
                                'Orbitron',
                                fontSize: 12,
                                color: const Color.fromARGB(255, 0, 0, 0),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: SizedBox(
                              height: 5,
                              child: Text(""),
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
                          Padding(
                            padding: const EdgeInsets.only(right: 1),
                            child: Text(
                              "INTERACT LEVEL: X",
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
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width:
                                        1.0, // Adjust the width of the border as needed
                                  ),
                                  color: const Color.fromARGB(255, 9, 255, 140),
                                ),
                                height: 82,
                                width: 195,
                                child: Row(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Colors.black,
                                          width:
                                              1.0, // Adjust the width of the border as needed
                                        ),
                                        color: const Color.fromARGB(
                                            255, 9, 255, 140),
                                      ),
                                      child: Image.asset(
                                          "lib/assets/images/estp-entrepreneur.png"),
                                    ),
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
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width:
                                        1.0, // Adjust the width of the border as needed
                                  ),
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                height: 82,
                                width: 195,
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
                                    Container(
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color.fromARGB(
                                              255, 255, 255, 255),
                                          width:
                                              2.0, // Adjust the width of the border as needed
                                        ),
                                      ),
                                      child: Image.asset(
                                        "lib/assets/animated/wink.gif",
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                    width:
                                        0.0, // Adjust the width of the border as needed
                                  ),
                                  color: const Color.fromARGB(255, 255, 0, 0),
                                ),
                                height: 81,
                                width: 195,
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width:
                                          0.0, // Adjust the width of the border as needed
                                    ),
                                    color: const Color.fromARGB(255, 255, 6, 6),
                                  ),
                                  height: 82,
                                  width: 195,
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.black,
                                            width:
                                                1.0, // Adjust the width of the border as needed
                                          ),
                                          color: const Color.fromARGB(
                                              255, 9, 255, 140),
                                        ),
                                        child: Image.asset(
                                            "lib/assets/images/estp-entrepreneur.png"),
                                      ),
                                      const Column(
                                        children: [
                                          Center(
                                            child: Text("NATURE"),
                                          ),
                                          Center(
                                            child: Text("NATURE"),
                                          ),
                                          Center(
                                            child: Text("NATURE"),
                                          ),
                                          Center(
                                            child: Text("NATURE"),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                //   color:
                                //       const Color.fromARGB(255, 255, 0, 0),
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
    );
  }
}
