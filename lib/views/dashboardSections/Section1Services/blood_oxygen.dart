import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset("lib/assets/animated/blood-vessel.gif",
                  height: 35, width: 35),
            ),
            Text("BLOOD OXYGEN",
                style: GoogleFonts.getFont(
                  'Orbitron',
                  fontSize: 9,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ],
    );
  }
}
