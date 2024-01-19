import 'dart:math';
import 'package:flutter/material.dart';
import 'package:radar_chart/radar_chart.dart';

class RadarChartExample extends StatefulWidget {
  const RadarChartExample({super.key});

  @override
  State<RadarChartExample> createState() => _RadarChartExampleState();
}

class _RadarChartExampleState extends State<RadarChartExample> {
  int _length = 3;
  List<double> values1 = [0.4, 0.8, 0.95];
  List<double> values2 = [0.5, 0.7, 0.85];
  List<double> values3 = [0.6, 0.6, 0.75];
  List<double> values4 = [0.7, 0.5, 0.65];
  List<double> values5 = [0.8, 0.4, 0.55];
  void _incrementCounter() {
    setState(() {
      final random = Random(12341);
      _length++;
      values1.add(random.nextDouble());
      values2.add(random.nextDouble());
      values3.add(random.nextDouble());
      values4.add(random.nextDouble());
      values5.add(random.nextDouble());
    });
  }

  // Bahut Sasta Jugad hai Isko Jara bhi koi naa Chede toh better hai;
  @override
  void initState() {
    super.initState();
    _incrementCounter();
    _incrementCounter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: RadarChart(
            length: _length,
            radius: 110,
            initialAngle: pi / 3.4,
            backgroundColor: const Color.fromARGB(255, 216, 210, 219),
            borderStroke: 2,
            borderColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.4),
            radialStroke: 1,
            radialColor: const Color.fromARGB(255, 0, 0, 0),
            radars: [
              RadarTile(
                values: values1,
                borderStroke: 3,
                borderColor: Colors.yellow,
                backgroundColor: Colors.yellow.withOpacity(0.4),
              ),
              // RadarTile(
              //   values: values2,
              //   borderStroke: 3,
              //   borderColor: Colors.blue,
              //   backgroundColor: Colors.blue.withOpacity(0.4),
              // ),
              // RadarTile(
              //   values: values3,
              //   borderStroke: 3,
              //   borderColor: const Color.fromARGB(255, 104, 62, 201),
              //   backgroundColor:
              //       const Color.fromARGB(255, 66, 0, 136).withOpacity(0.4),
              // ),
              // RadarTile(
              //   values: values4,
              //   borderStroke: 3,
              //   borderColor: const Color.fromARGB(255, 16, 104, 23),
              //   backgroundColor:
              //       const Color.fromARGB(255, 9, 241, 5).withOpacity(0.4),
              // ),
              // RadarTile(
              //   values: values5,
              //   borderStroke: 3,
              //   borderColor: const Color.fromARGB(255, 255, 59, 59),
              //   backgroundColor:
              //       const Color.fromARGB(255, 250, 2, 2).withOpacity(0.4),
              // ),
            ],
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
