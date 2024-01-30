// ignore: unused_import
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/userdata.dart';
// ignore: unused_import
import 'package:rotm/views/dashboardSections/Section3Services/tempchart.dart';

class UserTemperatureStatExtended extends StatefulWidget {
  const UserTemperatureStatExtended({super.key});

  @override
  State<UserTemperatureStatExtended> createState() =>
      _UserTemperatureStatExtendedState();
}

class _UserTemperatureStatExtendedState
    extends State<UserTemperatureStatExtended> {
  bool _isExpanded = false;
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'TEMPERATURE',
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
                "lib/assets/animated/thermometer.gif",
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
                                child: Image.asset("lib/assets/images/rate.gif",
                                    height: 40, width: 40),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 0.0),
                                child: Column(
                                  children: [
                                    Text("TEMPERATURE TREND",
                                        style: GoogleFonts.getFont(
                                          'Orbitron',
                                          fontSize: 15,
                                          color: const Color.fromARGB(
                                              255, 0, 0, 0),
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
                                width: 410, // Set the desired width
                                height: 151, // Set the desired height
                                child: ScatterChart(
                                  ScatterChartData(
                                    minX: 0,
                                    minY: 0,
                                    maxX: 10,
                                    maxY: 40,
                                    backgroundColor: Colors.black,
                                    scatterSpots: [
                                      ScatterSpot(
                                          1, UserTempData[0].toDouble()),
                                      ScatterSpot(
                                          2, UserTempData[1].toDouble()),
                                      ScatterSpot(
                                          3, UserTempData[2].toDouble()),
                                      ScatterSpot(
                                          4, UserTempData[3].toDouble()),
                                      ScatterSpot(
                                          5, UserTempData[0].toDouble()),
                                      ScatterSpot(
                                          6, UserTempData[2].toDouble()),
                                      ScatterSpot(
                                          7, UserTempData[2].toDouble()),
                                      ScatterSpot(
                                          8, UserTempData[0].toDouble()),
                                      ScatterSpot(
                                          9, UserTempData[2].toDouble()),
                                    ],
                                    titlesData: const FlTitlesData(show: false),
                                    borderData: FlBorderData(show: true),
                                    gridData: const FlGridData(show: true),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
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
                    height: 100,
                    width: MediaQuery.of(context).size.width - 20,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Text(
                                  "AVERAGE",
                                  style: GoogleFonts.getFont(
                                    'Orbitron',
                                    fontSize: 18,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "35",
                                  style: GoogleFonts.getFont(
                                    'Orbitron',
                                    fontSize: 18,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  "MINIMUM",
                                  style: GoogleFonts.getFont(
                                    'Orbitron',
                                    fontSize: 18,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "30 ",
                                  style: GoogleFonts.getFont(
                                    'Orbitron',
                                    fontSize: 18,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text(
                                  "MAXIMUM",
                                  style: GoogleFonts.getFont(
                                    'Orbitron',
                                    fontSize: 18,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "40",
                                  style: GoogleFonts.getFont(
                                    'Orbitron',
                                    fontSize: 18,
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      ],
                    )),
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
                        color: Color.fromARGB(255, 178, 200, 200),
                        border: Border.all(
                            color: Color.fromARGB(255, 0, 0, 0), width: 2),
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
                          DateTime(2024, 1, 20): 3,
                          DateTime(2024, 1, 7): 7,
                          DateTime(2024, 1, 8): 10,
                          DateTime(2024, 1, 9): 13,
                          DateTime(2024, 1, 13): 6,
                        },
                        colorsets: const {
                          1: Color.fromARGB(255, 255, 255, 255),
                          3: Color.fromARGB(255, 190, 236, 189),
                          5: Color.fromARGB(159, 146, 255, 142),
                          7: Color.fromARGB(255, 124, 235, 120),
                          9: Color.fromARGB(255, 43, 204, 38),
                          11: Color.fromARGB(184, 26, 181, 21),
                          13: Color.fromARGB(118, 15, 161, 10),
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
