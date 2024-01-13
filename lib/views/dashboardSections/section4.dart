import 'package:flutter/material.dart';

class SectionLevelFour extends StatefulWidget {
  const SectionLevelFour({super.key});

  @override
  State<SectionLevelFour> createState() => _SectionLevelFourState();
}

class _SectionLevelFourState extends State<SectionLevelFour> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 130,
          width: (130 * 3) + 20,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ],
    );
  }
}
