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
      child: Text("Week data section"),
    );
  }
}
