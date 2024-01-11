import 'package:flutter/material.dart';

class WeekDataSection extends StatefulWidget {
  const WeekDataSection({super.key});

  @override
  State<WeekDataSection> createState() => _WeekDataSectionState();
}

class _WeekDataSectionState extends State<WeekDataSection> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 80,
        width: 430,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 11, bottom: 11),
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 7,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0), // Adjust the right spacing
                child: Container(
                  width: 42,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
