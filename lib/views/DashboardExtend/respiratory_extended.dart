import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/userdata.dart';
// ignore: unused_import
import 'package:rotm/views/dashboardSections/Section2Services/respiratoryChart.dart';

class UserRespiratoryStatExtended extends StatefulWidget {
  const UserRespiratoryStatExtended({super.key});

  @override
  State<UserRespiratoryStatExtended> createState() =>
      _UserRespiratoryStatExtendedState();
}

class _UserRespiratoryStatExtendedState
    extends State<UserRespiratoryStatExtended> {
  bool _isExpanded = false;
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'RESPIRATORY',
            style: GoogleFonts.getFont(
              'Orbitron',
              fontSize: 25,
              color: const Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(
                  context); // This will pop the current screen and go back.
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Image.asset(
                "lib/assets/animated/lungs.gif",
                height: 40,
                width: 40,
              ),
            )
          ],
        ),
        body: Center(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.deepPurple.shade900,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                CupertinoSlidingSegmentedControl(
                  thumbColor: const Color.fromARGB(255, 103, 90, 161),
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  padding: const EdgeInsets.all(8),
                  children: {
                    0: Text(
                      'HOUR',
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    1: Text(
                      'DAY',
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    2: Text(
                      'WEEK',
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    3: Text(
                      'MONTH',
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 15,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  },
                  groupValue: _sliding,
                  onValueChanged: (int? newValue) {
                    setState(() {
                      _sliding = newValue;
                    });
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width - 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 5, top: 0),
                              child: Image.asset(
                                  "lib/assets/animated/lungs.gif",
                                  height: 40,
                                  width: 40),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0.0),
                              child: Column(
                                children: [
                                  Text("RESPIRATORY TREND",
                                      style: GoogleFonts.getFont(
                                        'Orbitron',
                                        fontSize: 15,
                                        color:
                                            const Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                      )),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          children: [
                            // Add the ScatterChart inside a Container with constraints
                            SizedBox(
                              width: MediaQuery.of(context).size.width -
                                  24, // Set the desired width
                              height: 151, // Set the desired height
                              child: BarChart(
                                BarChartData(
                                  minY: 0,
                                  maxY: 40,
                                  backgroundColor: Colors.black,
                                  titlesData: const FlTitlesData(show: false),
                                  borderData: FlBorderData(show: true),
                                  gridData: const FlGridData(show: true),
                                  barGroups: [
                                    BarChartGroupData(
                                        x: 0,
                                        barsSpace: 4,
                                        barRods: [
                                          BarChartRodData(
                                            toY: UserRespData[0]
                                                .toDouble(), // Your data point
                                            color: Colors
                                                .blue, // All bars have the color blue
                                          ),
                                        ]),
                                    BarChartGroupData(
                                        x: 1,
                                        barsSpace: 4,
                                        barRods: [
                                          BarChartRodData(
                                            toY: UserRespData[1].toDouble(),
                                            color: const Color.fromARGB(
                                                255, 212, 0, 0),
                                          ),
                                        ]),
                                    BarChartGroupData(
                                        x: 2,
                                        barsSpace: 4,
                                        barRods: [
                                          BarChartRodData(
                                            toY: UserRespData[2].toDouble(),
                                            color: const Color.fromARGB(
                                                255, 8, 233, 0),
                                          ),
                                        ]),
                                    BarChartGroupData(
                                      x: 3,
                                      barsSpace: 4,
                                      barRods: [
                                        BarChartRodData(
                                          toY: UserRespData[3].toDouble(),
                                          color: const Color.fromARGB(
                                              255, 255, 14, 255),
                                        ),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 4,
                                      barsSpace: 4,
                                      barRods: [
                                        BarChartRodData(
                                          toY: UserRespData[3].toDouble() + 5,
                                          color: const Color.fromARGB(
                                              255, 251, 255, 0),
                                        ),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 5,
                                      barsSpace: 4,
                                      barRods: [
                                        BarChartRodData(
                                          toY: UserRespData[1].toDouble(),
                                          color: const Color.fromARGB(
                                              255, 0, 255, 170),
                                        ),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 6,
                                      barsSpace: 4,
                                      barRods: [
                                        BarChartRodData(
                                          toY: UserRespData[3].toDouble(),
                                          color: const Color.fromARGB(
                                              255, 2, 23, 127),
                                        ),
                                      ],
                                    ),
                                    BarChartGroupData(
                                      x: 7,
                                      barsSpace: 4,
                                      barRods: [
                                        BarChartRodData(
                                          toY: UserRespData[3].toDouble(),
                                          color: const Color.fromARGB(
                                              255, 0, 217, 255),
                                        ),
                                      ],
                                    ),
                                  ],
                                  extraLinesData: ExtraLinesData(
                                    horizontalLines: [
                                      HorizontalLine(
                                        label: HorizontalLineLabel(
                                          show: true,
                                          labelResolver: (line) => 'Average',
                                          style: const TextStyle(
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontSize: 10,
                                          ),
                                        ),
                                        y: (UserRespData[0].toDouble() +
                                                UserRespData[1].toDouble() +
                                                UserRespData[2].toDouble() +
                                                UserRespData[3].toDouble()) /
                                            4,
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        strokeWidth: 2,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                  ),
                  height: 70,
                  width: MediaQuery.of(context).size.width - 20,
                  child: ExpandIcon(
                      isExpanded: _isExpanded,
                      onPressed: (bool isExpanded) {
                        setState(() {
                          _isExpanded = !isExpanded;
                        });
                      }),
                ),
                if (_isExpanded)
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 178, 200, 200),
                        border: Border.all(
                            color: const Color.fromARGB(255, 0, 0, 0),
                            width: 2),
                      ),
                      height: 300,
                      width: MediaQuery.of(context).size.width - 20,
                      child: HeatMapCalendar(
                        defaultColor: Colors.white,
                        flexible: false,
                        size: 30,
                        weekTextColor: Colors.black,
                        colorMode: ColorMode.color,
                        datasets: {
                          DateTime(2024, 1, 31): 9,
                          DateTime(2024, 1, 30): 9,
                          DateTime(2024, 1, 29): 10,
                          DateTime(2024, 1, 28): 13,
                          DateTime(2024, 1, 27): 6,
                          DateTime(2024, 1, 26): 13,
                          DateTime(2024, 1, 25): 6,
                          DateTime(2024, 1, 24): 9,
                          DateTime(2024, 1, 23): 10,
                          DateTime(2024, 1, 22): 13,
                          DateTime(2024, 1, 21): 6,
                          DateTime(2024, 1, 20): 9,
                          DateTime(2024, 1, 19): 10,
                          DateTime(2024, 1, 18): 9,
                          DateTime(2024, 1, 17): 10,
                          DateTime(2024, 1, 16): 13,
                          DateTime(2024, 1, 15): 6,
                          DateTime(2024, 1, 14): 9,
                          DateTime(2024, 1, 13): 10,
                          DateTime(2024, 1, 12): 13,
                          DateTime(2024, 1, 11): 6,
                          DateTime(2024, 1, 10): 9,
                          DateTime(2024, 1, 9): 10,
                          DateTime(2024, 1, 8): 13,
                          DateTime(2024, 1, 7): 6,
                          DateTime(2024, 1, 6): 13,
                          DateTime(2024, 1, 5): 6,
                          DateTime(2024, 1, 4): 9,
                          DateTime(2024, 1, 3): 10,
                          DateTime(2024, 1, 2): 13,
                          DateTime(2024, 1, 1): 6,
                        },
                        colorsets: const {
                          1: Color.fromARGB(255, 255, 255, 255),
                          3: Color.fromARGB(255, 189, 236, 230),
                          5: Color.fromARGB(255, 175, 230, 251),
                          7: Color.fromARGB(255, 0, 229, 255),
                          9: Color.fromARGB(255, 17, 154, 232),
                          11: Color.fromARGB(184, 18, 120, 236),
                          13: Color.fromARGB(253, 0, 13, 255),
                        },
                        onClick: (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(value.toString())));
                        },
                      )),
              ],
            ),
          ),
        ));
  }
}
