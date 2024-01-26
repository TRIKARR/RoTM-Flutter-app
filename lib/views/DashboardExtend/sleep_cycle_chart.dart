// ignore: unused_import
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserSleepChartExtended extends StatefulWidget {
  const UserSleepChartExtended({super.key});

  @override
  State<UserSleepChartExtended> createState() => _UserSleepChartExtendedState();
}

class _UserSleepChartExtendedState extends State<UserSleepChartExtended> {
  bool _isExpanded = false;
  int? _sliding = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'SLEEP CYCLE',
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
                "lib/assets/animated/sleep.gif",
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
                  child: const Padding(
                    padding: EdgeInsets.all(0.0),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width - 20,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: const Color.fromARGB(255, 0, 0, 0), width: 2),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(0.0),
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
