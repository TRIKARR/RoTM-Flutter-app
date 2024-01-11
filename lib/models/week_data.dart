import 'package:flutter/material.dart';

class WeekDataSection extends StatefulWidget {
  const WeekDataSection({super.key});

  @override
  State<WeekDataSection> createState() => _WeekDataSectionState();
}

class _WeekDataSectionState extends State<WeekDataSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(0),
        color: const Color.fromARGB(255, 97, 77, 187),
      ),
      child: Text("Week data section"),
    );
  }
}
