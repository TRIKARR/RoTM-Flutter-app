import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserHeartPulseStatExdended extends StatefulWidget {
  const UserHeartPulseStatExdended({super.key});

  @override
  State<UserHeartPulseStatExdended> createState() =>
      _UserHeartPulseStatExdendedState();
}

class _UserHeartPulseStatExdendedState
    extends State<UserHeartPulseStatExdended> {
  bool _isExpanded = false;
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'HEART PULSE',
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
                "lib/assets/animated/heartbeat.gif",
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
                  height: 70,
                  width: MediaQuery.of(context).size.width - 20,
                  child: ExpandIcon(onPressed: (value) {}),
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
                      color: Colors.white,
                      border: Border.all(
                          color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                    ),
                    height: 70,
                    width: MediaQuery.of(context).size.width - 20,
                    child: const Text(
                      "This is the expanded widget",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ));
  }
}
