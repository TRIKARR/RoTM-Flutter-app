import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/views/dashboardSections/Section1Services/blood_oxygen.dart';

class UserBloodOxygenStatExtended extends StatefulWidget {
  const UserBloodOxygenStatExtended({super.key});

  @override
  State<UserBloodOxygenStatExtended> createState() =>
      _UserBloodOxygenStatExtendedState();
}

class _UserBloodOxygenStatExtendedState
    extends State<UserBloodOxygenStatExtended> {
  bool _isExpanded = true;
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'BLOOD OXYGEN',
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
                "lib/assets/animated/blood-vessel.gif",
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
                              y1: 5,
                              y2: 10,
                              color: const Color.fromARGB(255, 28, 251, 255)
                                  .withOpacity(0.4)),
                          HorizontalRangeAnnotation(
                              y1: 0,
                              y2: 5,
                              color: const Color.fromARGB(255, 255, 24, 24)
                                  .withOpacity(0.6)),
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
                              const FlSpot(10, 3),
                              const FlSpot(11, 5),
                              const FlSpot(12, 3),
                              const FlSpot(13, 5),
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
                              blurRadius: 0,
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                        ],
                      ),
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
                  height: 140,
                  width: MediaQuery.of(context).size.width - 20,
                  child: const Row(
                    children: [
                      SizedBox(
                        width: 30,
                      ),
                      UserBloodOxygen(),
                      SizedBox(
                        width: 100,
                      ),
                      UserBloodOxygen(),
                    ],
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
                  height: 50,
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
                      height: 270,
                      width: MediaQuery.of(context).size.width - 20,
                      child: HeatMapCalendar(
                        defaultColor: Colors.white,
                        flexible: false,
                        size: 25,
                        weekTextColor: Colors.black,
                        colorMode: ColorMode.color,
                        datasets: {
                          DateTime(2024, 1, 20): 10,
                          DateTime(2024, 1, 7): 9,
                          DateTime(2024, 1, 8): 10,
                          DateTime(2024, 1, 31): 13,
                          DateTime(2024, 1, 13): 6,
                          DateTime(2024, 1, 15): 10,
                          DateTime(2024, 1, 4): 9,
                          DateTime(2024, 1, 3): 10,
                          DateTime(2024, 1, 2): 13,
                          DateTime(2024, 1, 1): 6,
                        },
                        colorsets: const {
                          1: Color.fromARGB(255, 255, 255, 255),
                          3: Color.fromARGB(255, 225, 135, 135),
                          5: Color.fromARGB(159, 234, 140, 140),
                          7: Color.fromARGB(255, 223, 119, 119),
                          9: Color.fromARGB(255, 237, 79, 79),
                          11: Color.fromARGB(255, 226, 60, 60),
                          13: Color.fromARGB(255, 255, 0, 0),
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
