import 'package:flutter/material.dart';
import 'package:gauge_indicator/gauge_indicator.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHeartPulse extends StatefulWidget {
  const UserHeartPulse({super.key});

  @override
  State<UserHeartPulse> createState() => _UserHeartPulseState();
}

class _UserHeartPulseState extends State<UserHeartPulse> {
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
              child: Image.asset("lib/assets/animated/heartbeat.gif",
                  height: 40, width: 35),
            ),
            const SizedBox(
              width: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Column(
                children: [
                  Text("SLEEP",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 10,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      )),
                  Text("CYCLE",
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
            value: 36,
            duration: const Duration(seconds: 2),
            curve: Curves.elasticOut,
            radius: 50,
            axis: const GaugeAxis(
              min: 0,
              max: 100,
              degrees: 180,
              style: GaugeAxisStyle(
                thickness: 20,
                background: Color.fromARGB(255, 255, 255, 255),
                segmentSpacing: 2,
              ),
              pointer: GaugePointer.circle(
                radius: 8,
                color: Color.fromARGB(255, 255, 255, 255),
                border: GaugePointerBorder(color: Colors.black, width: 2),
              ),
              progressBar: GaugeProgressBar.rounded(
                color: Color(0xFFB4C2F8),
                gradient: GaugeAxisGradient(colors: [
                  Color(0xff23b6e6),
                  Color(0xff02d39a),
                  Color.fromARGB(255, 94, 15, 156),
                  Color.fromARGB(255, 221, 25, 25),
                ]),
              ),
              segments: [
                GaugeSegment(
                  from: 0,
                  to: 25,
                  color: Color.fromARGB(255, 255, 1, 1),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 25,
                  to: 50,
                  color: Color.fromARGB(255, 255, 149, 0),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 50,
                  to: 75,
                  color: Color.fromARGB(255, 8, 136, 255),
                  cornerRadius: Radius.zero,
                ),
                GaugeSegment(
                  from: 75,
                  to: 100,
                  color: Color.fromARGB(255, 68, 255, 0),
                  cornerRadius: Radius.zero,
                ),
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
        Text("BAD",
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
