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
                            color: const Color.fromARGB(255, 255, 255, 255),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 0.0),
                                  child: Lottie.asset(
                                    "lib/assets/others/togother.json",
                                    height: 200,
                                    width: 190,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 40),
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
                                  padding: const EdgeInsets.only(right: 40.0),
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
                            color: Colors.cyan,
                            height: 230,
                            width: 195,
                            child: const Column(
                              children: [
                                SizedBox(
                                  height: 8,
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


//Random array data
// natures = ["Hardy", "Lonely", "Adamant", "Naughty", "Brave", "Bold", "Docile", "Impish", "Lax", "Relaxed", 
//  "Modest", "Mild", "Bashful", "Rash", "Quiet", "Calm", "Gentle", "Careful", "Quirky", "Sassy", 
//  "Timid", "Hasty", "Jolly", "Naive", "Serious"]


