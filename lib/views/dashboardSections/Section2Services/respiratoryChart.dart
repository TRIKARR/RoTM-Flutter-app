// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/models/userdata.dart';

class UserRespirationRate extends StatefulWidget {
  const UserRespirationRate({super.key});

  @override
  State<UserRespirationRate> createState() => _UserRespirationRateState();
}

class _UserRespirationRateState extends State<UserRespirationRate> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 0),
              child: Image.asset("lib/assets/animated/lungs.gif",
                  height: 40, width: 40),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Column(
                children: [
                  Text("RESPIRATORY TREND",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            // Add the ScatterChart inside a Container with constraints
            SizedBox(
              width: 270, // Set the desired width
              height: 85, // Set the desired height
              child: BarChart(
                BarChartData(
                  minY: 0,
                  maxY: 40,
                  backgroundColor: Colors.black,
                  titlesData: const FlTitlesData(show: false),
                  borderData: FlBorderData(show: true),
                  gridData: const FlGridData(show: true),
                  barGroups: [
                    BarChartGroupData(x: 0, barsSpace: 4, barRods: [
                      BarChartRodData(
                        toY: UserRespData[0].toDouble(), // Your data point
                        color: Colors.blue, // All bars have the color blue
                      ),
                    ]),
                    BarChartGroupData(x: 1, barsSpace: 4, barRods: [
                      BarChartRodData(
                        toY: UserRespData[1].toDouble(),
                        color: const Color.fromARGB(255, 212, 0, 0),
                      ),
                    ]),
                    BarChartGroupData(x: 2, barsSpace: 4, barRods: [
                      BarChartRodData(
                        toY: UserRespData[2].toDouble(),
                        color: const Color.fromARGB(255, 8, 233, 0),
                      ),
                    ]),
                    BarChartGroupData(
                      x: 3,
                      barsSpace: 4,
                      barRods: [
                        BarChartRodData(
                          toY: UserRespData[3].toDouble(),
                          color: const Color.fromARGB(255, 255, 14, 255),
                        ),
                      ],
                    ),
                  ],
                  extraLinesData: ExtraLinesData(
                    horizontalLines: [
                      HorizontalLine(
                        label: HorizontalLineLabel(
                          show: true,
                          labelResolver: (line) => 'Average',
                          style: const TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 10,
                          ),
                        ),
                        y: (UserRespData[0].toDouble() +
                                UserRespData[1].toDouble() +
                                UserRespData[2].toDouble() +
                                UserRespData[3].toDouble()) /
                            4,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        strokeWidth: 2,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
