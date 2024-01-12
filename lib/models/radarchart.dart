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
  List<double> values1 = [0.4, 0.8, 0.65];
  List<double> values2 = [0.5, 0.3, 0.85];

  void _incrementCounter() {
    setState(() {
      final random = Random(12341);
      _length++;
      values1.add(random.nextDouble());
      values2.add(random.nextDouble());
    });
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
            backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
              RadarTile(
                values: values2,
                borderStroke: 3,
                borderColor: Colors.blue,
                backgroundColor: Colors.blue.withOpacity(0.4),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
