import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:rotm/models/UI_Resources/app_colors.dart';
import 'package:rotm/models/UI_Resources/color_extensions.dart';

class RadarChartSample1 extends StatefulWidget {
  RadarChartSample1({super.key});

  final gridColor = AppColors.contentColorPurple.lighten(80);
  final titleColor = AppColors.contentColorPurple.lighten(80);
  final fashionColor = AppColors.contentColorRed;
  final artColor = AppColors.contentColorCyan;
  final boxingColor = AppColors.contentColorGreen;
  final entertainmentColor = AppColors.contentColorWhite;
  final offRoadColor = AppColors.contentColorYellow;

  @override
  State<RadarChartSample1> createState() => _RadarChartSample1State();
}

class _RadarChartSample1State extends State<RadarChartSample1> {
  int selectedDataSetIndex = -1;
  double angleValue = 0;
  bool relativeAngleMode = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: rawDataSets()
                .asMap()
                .map((index, value) {
                  final isSelected = index == selectedDataSetIndex;
                  return MapEntry(
                    index,
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedDataSetIndex = index;
                        });
                      },
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        margin: const EdgeInsets.symmetric(vertical: 2),
                        height: 0,
                        decoration: BoxDecoration(
                          color: isSelected
                              ? AppColors.pageBackground
                              : Colors.black,
                          borderRadius: BorderRadius.circular(46),
                        ),
                        padding: const EdgeInsets.symmetric(
                          vertical: 4,
                          horizontal: 6,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            AnimatedContainer(
                              duration: const Duration(milliseconds: 400),
                              curve: Curves.easeInToLinear,
                              padding: EdgeInsets.all(isSelected ? 8 : 6),
                              decoration: BoxDecoration(
                                color: value.color,
                                shape: BoxShape.circle,
                              ),
                            ),
                            AnimatedDefaultTextStyle(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.easeInToLinear,
                              style: TextStyle(
                                color:
                                    isSelected ? value.color : widget.gridColor,
                              ),
                              child: Text(value.title),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                })
                .values
                .toList(),
          ),
          AspectRatio(
            aspectRatio: 1,
            child: RadarChart(
              RadarChartData(
                radarShape: RadarShape.polygon,
                radarTouchData: RadarTouchData(
                  touchCallback: (FlTouchEvent event, response) {
                    if (!event.isInterestedForInteractions) {
                      setState(() {
                        selectedDataSetIndex = -1;
                      });
                      return;
                    }
                    setState(() {
                      selectedDataSetIndex =
                          response?.touchedSpot?.touchedDataSetIndex ?? -1;
                    });
                  },
                ),
                dataSets: [
                  //Do not touch this Widget 
                  RadarDataSet(
                    fillColor: const Color.fromARGB(255, 255, 255, 255),
                    borderColor: widget.artColor,
                    dataEntries: [
                      const RadarEntry(value: 10),
                      const RadarEntry(value: 10),
                      const RadarEntry(value: 10),
                    ],
                  ),
                  //Only use this widget to showcase the User Data
                  RadarDataSet(
                    fillColor: const Color.fromARGB(255, 255, 0, 0).withOpacity(0.5),
                    borderColor: Colors.black,
                    dataEntries: [
                      const RadarEntry(value: 7),
                      const RadarEntry(value: 9),
                      const RadarEntry(value: 8),
                    ],
                  ),
                  // Do not Touch this Widget
                  RadarDataSet(
                    fillColor: Colors.transparent,
                    borderColor: Colors.transparent,
                    dataEntries: [
                      const RadarEntry(value: 10),
                      const RadarEntry(value: 2),
                      const RadarEntry(value: 5),
                    ],
                  ),
                ],
                radarBackgroundColor: const Color.fromARGB(0, 255, 255, 255),
                borderData: FlBorderData(show: true),
                radarBorderData: const BorderSide(
                    color: Color.fromARGB(255, 0, 0, 0), width: 4),
                titleTextStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontStyle: FontStyle.italic),
                getTitle: (index, angle) {
                  final usedAngle =
                      relativeAngleMode ? angle + angleValue : angleValue;
                  switch (index) {
                    case 0:
                      return RadarChartTitle(
                        text: 'PHYSICAL',
                        angle: usedAngle,
                      );
                    case 2:
                      return RadarChartTitle(
                        text: 'MENTAL',
                        angle: usedAngle,
                      );
                    case 1:
                      return RadarChartTitle(text: 'SOCIAL', angle: usedAngle);
                    default:
                      return const RadarChartTitle(text: '');
                  }
                },
                gridBorderData: const BorderSide(color: Colors.grey, width: 1),
                tickCount: 10,
                ticksTextStyle:
                    const TextStyle(color: Color.fromARGB(0, 0, 0, 0)),
                tickBorderData: const BorderSide(
                  style: BorderStyle.solid,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              swapAnimationDuration: const Duration(milliseconds: 400),
            ),
          ),
        ],
      ),
    );
  }

  List<RadarDataSet> showingDataSets() {
    return rawDataSets().asMap().entries.map((entry) {
      final index = entry.key;
      final rawDataSet = entry.value;

      final isSelected = index == selectedDataSetIndex
          ? true
          : selectedDataSetIndex == -1
              ? true
              : false;

      return RadarDataSet(
        fillColor: isSelected
            ? rawDataSet.color.withOpacity(0.2)
            : rawDataSet.color.withOpacity(0.05),
        borderColor:
            isSelected ? rawDataSet.color : rawDataSet.color.withOpacity(0.25),
        entryRadius: isSelected ? 5 : 2,
        dataEntries:
            rawDataSet.values.map((e) => RadarEntry(value: e)).toList(),
        borderWidth: isSelected ? 3 : 2,
      );
    }).toList();
  }

  List<RawDataSet> rawDataSets() {
    return [
      RawDataSet(
        title: '',
        color: widget.fashionColor,
        //Range - {100 to 900} - Relative based on the Max Value
        values: [
          0,
          0,
          1,
        ],
      ),
    ];
  }
}

class RawDataSet {
  RawDataSet({
    required this.title,
    required this.color,
    required this.values,
  });

  final String title;
  final Color color;
  final List<double> values;
}
