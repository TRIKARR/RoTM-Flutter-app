// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class UserBloodOxygen extends StatefulWidget {
  const UserBloodOxygen({super.key});

  @override
  State<UserBloodOxygen> createState() => _UserBloodOxygenState();
}

class _UserBloodOxygenState extends State<UserBloodOxygen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5, top: 4.0),
              child: Image.asset("lib/assets/animated/blood-vessel.gif",
                  height: 40, width: 35),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text("BLOOD",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  Text("OXYGEN",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        const Center(
          child: AnimatedRadialGauge(
            value: 86,
            duration: Duration(seconds: 1),
            curve: Curves.elasticOut,
            radius: 50,
            axis: GaugeAxis(
              min: 0,
              max: 100,
              degrees: 180,
              style: GaugeAxisStyle(
                thickness: 20,
                background: Color(0xFFDFE2EC),
                segmentSpacing: 4,
              ),
              progressBar: GaugeProgressBar.rounded(
                color: Color(0xFFB4C2F8),
              ),
              segments: [
                GaugeSegment(
                  from: 0,
                  to: 33.3,
                  color: Color(0xFFD9DEEB),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 33.3,
                  to: 66.6,
                  color: Color(0xFFD9DEEB),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 66.6,
                  to: 100,
                  color: Color(0xFFD9DEEB),
                  cornerRadius: Radius.zero,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
