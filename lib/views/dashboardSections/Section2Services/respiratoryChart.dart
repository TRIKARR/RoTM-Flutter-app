// ignore_for_file: file_names

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              child: Image.asset("lib/assets/images/rate.gif",
                  height: 40, width: 40),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 0.0),
              child: Column(
                children: [
                  Text("TEMPERATURE TREND",
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
              child: ScatterChart(
                ScatterChartData(
                  minX: 0,
                  minY: 0,
                  maxX: 5,
                  maxY: 10,
                  backgroundColor: Colors.black,
                  scatterSpots: [
                    ScatterSpot(1, 3),
                    ScatterSpot(2, 6),
                    ScatterSpot(3, 2),
                    ScatterSpot(4, 5),
                  ],
                  titlesData: const FlTitlesData(show: false),
                  borderData: FlBorderData(show: true),
                  gridData: const FlGridData(show: true),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
