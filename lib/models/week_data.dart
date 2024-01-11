import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

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
              String day = _getDayAbbreviation(index);
              return Padding(
                  padding:
                      const EdgeInsets.all(8.0), // Adjust the right spacing
                  child: Center(
                    child: Stack(
                      children: [
                        Container(
                          width: 42,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Center(
                            child: Text(
                              day,
                              style: GoogleFonts.getFont(
                                'Orbitron',
                                fontSize: 11,
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Center(
                            child: CircularPercentIndicator(
                          radius: 20.9,
                          lineWidth: 5.0,
                          percent: 0.50,
                          progressColor: Colors.green,
                          backgroundColor: Colors.redAccent,
                        )),
                      ],
                    ),
                  ));
            },
          ),
        ),
      ),
    );
  }

  String _getDayAbbreviation(int index) {
    List<String> days = ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'];
    return days[index];
  }
}
