import 'package:flutter/material.dart';
import 'package:rotm/views/dashboardSections/Section1Services/blood_oxygen.dart';

class LevelOneSection extends StatefulWidget {
  const LevelOneSection({super.key});

  @override
  State<LevelOneSection> createState() => _LevelOneSectionState();
}

class _LevelOneSectionState extends State<LevelOneSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 130,
            width: 130,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          height: 130,
          width: 130,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
          child: const UserBloodOxygen(),
        ),
      ],
    );
  }
}
