import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:rotm/views/DashboardExtend/respiratory_extended.dart';
import 'package:rotm/views/RotmInteractServices/AI_Services/chatbot/home_page.dart';
import 'package:rotm/views/RotmInteractServices/AI_Services/clinical_diagnosis.dart';
import 'package:rotm/views/RotmInteractServices/analysisUserChartHEalth.dart';
import 'package:rotm/views/RotmInteractServices/clinical.dart';
import 'package:rotm/views/RotmInteractServices/healthinfo.dart';
import 'package:rotm/views/RotmInteractServices/userchatbot.dart';

class InteractiveServices extends StatefulWidget {
  const InteractiveServices({super.key});

  @override
  State<InteractiveServices> createState() => _InteractiveServicesState();
}

class _InteractiveServicesState extends State<InteractiveServices> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(30),
          child: OpenContainer(
            closedColor: Colors.deepPurple.shade900,
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: (130 * 2) + 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const DiagnosisService(),
              );
            },
            openBuilder: (context, action) => const HomePage(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            //Important Woidget
            borderRadius: BorderRadius.circular(30),
            child: OpenContainer(
              closedColor: Colors.deepPurple.shade900,
              closedBuilder: (context, action) {
                return Container(
                  height: 130,
                  width: (130 * 2) + 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const HealthInfo(),
                );
              },
              openBuilder: (context, action) => const HomePage(),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: ClipRRect(
            //Important Woidget
            borderRadius: BorderRadius.circular(30),
            child: OpenContainer(
              closedColor: Colors.deepPurple.shade900,
              closedBuilder: (context, action) {
                return Container(
                  height: 130,
                  width: (130 * 2) + 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                  child: const UserChatBot(),
                );
              },
              openBuilder: (context, action) => const HomePage(),
            ),
          ),
        ),
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(30),
          child: OpenContainer(
            closedColor: Colors.deepPurple.shade900,
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: (130 * 2) + 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const UserReportAnalysisBot(),
              );
            },
            openBuilder: (context, action) => const HomePage(),
          ),
        ),
      ],
    );
  }
}
