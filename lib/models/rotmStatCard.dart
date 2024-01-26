// ignore_for_file: file_names
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
        elevation: 10,
        child: ClipRect(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 0.5),
              child: Container(
                height: 293,
                width: 390,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromARGB(255, 0, 0, 0),
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
                          color: const Color.fromARGB(255, 255, 255, 255),
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
                              width:
                                  1, // Adjust the width of the border as needed
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
                                  "BOND LEVEL: 4",
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
                                  "INTERACT LEVEL: 4",
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
                          color: const Color.fromARGB(255, 0, 0, 0),
                          height: 245,
                          width: 195,
                          child: GridView.count(
                            physics: const NeverScrollableScrollPhysics(),
                            crossAxisCount: 2,
                            childAspectRatio: 1.2,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                  child: Image.asset(
                                    "lib/assets/images/estp-entrepreneur.png",
                                    width: 100,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                    color: const Color.fromARGB(
                                        255, 168, 159, 159),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "MANNER",
                                        style: GoogleFonts.getFont(
                                          'Orbitron',
                                          fontSize: 16,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "INTJ-A",
                                        style: GoogleFonts.getFont(
                                          'Orbitron',
                                          fontSize: 16,
                                          color: const Color.fromARGB(
                                              255, 166, 0, 255),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                    color: const Color.fromARGB(
                                        255, 168, 159, 159),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "MOOD",
                                        style: GoogleFonts.getFont(
                                          'Orbitron',
                                          fontSize: 20,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "CHARM",
                                        style: GoogleFonts.getFont(
                                          'Orbitron',
                                          fontSize: 18,
                                          color: const Color.fromARGB(
                                              255, 0, 47, 255),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                  child: Image.asset(
                                      "lib/assets/animated/wink.gif"),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                    color: const Color.fromARGB(
                                        255, 255, 255, 255),
                                  ),
                                  child: Image.asset(
                                    "lib/assets/animated/eye.gif",
                                    width: 100,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(0.0),
                                child: Container(
                                  height: 100,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 1,
                                    ),
                                    borderRadius: BorderRadius.circular(0),
                                    color: const Color.fromARGB(
                                        255, 168, 159, 159),
                                  ),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "MODE",
                                        style: GoogleFonts.getFont(
                                          'Orbitron',
                                          fontSize: 18,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text(
                                        "RELAXED",
                                        style: GoogleFonts.getFont(
                                          'Orbitron',
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              255, 255, 0, 0),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
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
        ),
      ),
    );
  }
}
// Modes - Relaxed -> Mild -> Serious 