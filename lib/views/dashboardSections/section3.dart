import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:rotm/views/DashboardExtend/respiratory_extended.dart';
import 'package:rotm/views/dashboardSections/Section3Services/tempchart.dart';
import 'package:rotm/views/dashboardSections/Section3Services/temperature.dart';

class SectionLevelThree extends StatefulWidget {
  const SectionLevelThree({super.key});

  @override
  State<SectionLevelThree> createState() => _SectionLevelThreeState();
}

class _SectionLevelThreeState extends State<SectionLevelThree> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(20),
          child: OpenContainer(
            closedColor: const Color.fromARGB(255, 255, 255, 255),
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const UserTemperature(),
              );
            },
            openBuilder: (context, action) =>
                const UserRespiratoryStatExtended(),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(20),
          child: OpenContainer(
            closedColor: const Color.fromARGB(255, 255, 255, 255),
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: (130 * 2) + 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const UserTemperatureGraph(),
              );
            },
            openBuilder: (context, action) =>
                const UserRespiratoryStatExtended(),
          ),
        ),
      ],
    );
  }
}
