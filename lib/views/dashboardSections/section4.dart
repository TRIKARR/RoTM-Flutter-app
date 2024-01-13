// ignore_for_file: unused_import

import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/meow.dart';
import 'package:rotm/views/dashboardSections/Section1Services/blood_oxygen.dart';

class SectionLevelFour extends StatefulWidget {
  const SectionLevelFour({super.key});

  @override
  State<SectionLevelFour> createState() => _SectionLevelFourState();
}

class _SectionLevelFourState extends State<SectionLevelFour> {
  final List<Color> gardientColors = [
    const Color(0xff23b6e6),
    const Color(0xff02d39a),
    const Color.fromARGB(255, 94, 15, 156),
    const Color.fromARGB(255, 221, 25, 25),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        GestureDetector(
          child: OpenContainer(
            //Important grey colour
            // closedColor: const Color.fromARGB(255, 59, 53, 53),
            closedColor: const Color.fromARGB(255, 255, 255, 255),
            closedBuilder: (BuildContext context, void Function() action) {
              return Container(
                height: 150,
                width: (130 * 3) + 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: LineChart(
                    LineChartData(
                      lineTouchData: const LineTouchData(
                        enabled: true,
                        touchTooltipData: LineTouchTooltipData(
                          tooltipBgColor: Color.fromARGB(255, 255, 255, 255),
                        ),
                      ),
                      gridData: const FlGridData(
                        show: true,
                        drawVerticalLine: true,
                        drawHorizontalLine: true,
                      ),
                      // will work on FLtiles data later
                      titlesData: const FlTitlesData(show: false),
                      borderData: FlBorderData(
                        show: true,
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                      minX: 0,
                      maxX: 16,
                      minY: 0,
                      maxY: 10,
                      rangeAnnotations:
                          RangeAnnotations(horizontalRangeAnnotations: [
                        HorizontalRangeAnnotation(
                            y1: 0,
                            y2: 2.5,
                            color: const Color.fromARGB(255, 28, 251, 255)
                                .withOpacity(0.9)),
                        HorizontalRangeAnnotation(
                            y1: 2.5,
                            y2: 5,
                            color: const Color.fromARGB(255, 0, 255, 17)
                                .withOpacity(0.9)),
                        HorizontalRangeAnnotation(
                            y1: 5,
                            y2: 7.5,
                            color: const Color.fromARGB(255, 231, 92, 5)
                                .withOpacity(0.9)),
                        HorizontalRangeAnnotation(
                            y1: 7.5,
                            y2: 10,
                            color: const Color.fromARGB(255, 255, 24, 24)
                                .withOpacity(0.9)),
                      ]),
                      lineBarsData: [
                        LineChartBarData(
                          color: const Color.fromARGB(255, 0, 0, 0),
                          spots: [
                            //Random values for showcase
                            const FlSpot(0, 0),
                            const FlSpot(1, 1),
                            const FlSpot(2, 4),
                            const FlSpot(3, 2),
                            const FlSpot(4, 5),
                            const FlSpot(5, 4),
                            const FlSpot(6, 3),
                            const FlSpot(7, 4),
                            const FlSpot(8, 3),
                            const FlSpot(9, 4),
                            const FlSpot(10, 10),
                            const FlSpot(11, 5),
                            const FlSpot(12, 3),
                            const FlSpot(13, 8),
                            const FlSpot(14, 4),
                            const FlSpot(15, 2),
                            const FlSpot(16, 1),
                          ],
                          show: true,
                          isCurved: true,
                          barWidth: 2.5,
                          belowBarData: BarAreaData(
                            show: true,
                          ),
                          aboveBarData: BarAreaData(show: false),
                          dotData: const FlDotData(show: false),
                          shadow: const Shadow(
                            blurRadius: 15,
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            openBuilder: (BuildContext context,
                void Function({Object? returnValue}) action) {
              return const UserBloodOxygen();
            },
          ),
        ),
      ],
    );
  }
}

// RangeAnnotations(
//                     verticalRangeAnnotations: [
//                       VerticalRangeAnnotation(
//                         x1: 0,
//                         x2: 4,
//                         color:
//                             Color.fromARGB(255, 7, 110, 237).withOpacity(0.7),
//                       ),
//                       VerticalRangeAnnotation(
//                         x1: 4,
//                         x2: 8,
//                         color: Color.fromARGB(255, 7, 178, 61).withOpacity(1),
//                       ),
//                       VerticalRangeAnnotation(
//                         x1: 8,
//                         x2: 12,
//                         color: const Color.fromARGB(255, 94, 15, 156),
//                       ),
//                       VerticalRangeAnnotation(
//                         x1: 12,
//                         x2: 16,
//                         color: const Color.fromARGB(255, 221, 25, 25),
//                       ),
//                     ],
//                   )
