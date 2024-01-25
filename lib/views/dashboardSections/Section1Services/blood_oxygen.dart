// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:rotm/userdata.dart';

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
                  height: 40, width: 45),
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
        Center(
          child: AnimatedRadialGauge(
            value: UserOxyData.toDouble(),
            duration: const Duration(seconds: 2),
            curve: Curves.elasticOut,
            radius: 50,
            axis: const GaugeAxis(
              min: 0,
              max: 100,
              degrees: 180,
              style: GaugeAxisStyle(
                thickness: 20,
                background: Color.fromARGB(255, 76, 0, 255),
                segmentSpacing: 2,
              ),
              pointer: GaugePointer.circle(
                radius: 8,
                color: Color.fromARGB(255, 0, 255, 217),
                border: GaugePointerBorder(color: Colors.black, width: 2),
              ),
              progressBar: GaugeProgressBar.rounded(
                color: Color.fromARGB(255, 255, 0, 0),
              ),
              segments: [
                // GaugeSegment(
                //   from: 0,
                //   to: 94,
                //   color: Color(0xFFB4C2F8),
                //   cornerRadius: Radius.zero,
                // ),
              ],
            ),
            builder: (context, child, value) => RadialGaugeLabel(
              value: value,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text("NORMAL",
            style: GoogleFonts.getFont(
              'Orbitron',
              fontSize: 10,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ))
      ],
    );
  }
}
