import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
        const DiagnosisService(),
        const HealthInfo(),
        const UserChatBot(),
        const UserReportAnalysisBot(),
      ],
    );
  }
}
