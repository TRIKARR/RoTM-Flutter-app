import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:rotm/models/userdata.dart';
import 'package:rotm/views/DashboardExtend/respiratory_extended.dart';
import 'package:rotm/views/dashboardSections/Section3Services/tempchart.dart';
import 'package:rotm/views/dashboardSections/Section3Services/temperature.dart';

class SectionLevelThree extends StatefulWidget {
  const SectionLevelThree({super.key});

  @override
  State<SectionLevelThree> createState() => _SectionLevelThreeState();
}

class _SectionLevelThreeState extends State<SectionLevelThree> {
  void ExtractRequest() async {
    var url = Uri.parse('http://192.168.0.241:3000/extract');
    var queryParams = {"id": BRoTM_UserID};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var tempData = responseData["temp"];
    var respData = responseData["resp"]; // Store the "temp" array in a variable
    UserTempData = tempData;
    UserRespData = respData;
    // ignore: avoid_print
    print(queryParams.toString());
  }

  @override
  void initState() {
    super.initState();
    ExtractRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(20),
          child: OpenContainer(
            closedColor: const Color.fromARGB(255, 255, 255, 255),
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const UserTemperature(),
              );
            },
            openBuilder: (context, action) =>
                const UserRespiratoryStatExtended(),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        ClipRRect(
          //Important Woidget
          borderRadius: BorderRadius.circular(20),
          child: OpenContainer(
            closedColor: const Color.fromARGB(255, 255, 255, 255),
            closedBuilder: (context, action) {
              return Container(
                height: 130,
                width: (130 * 2) + 10,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                child: const UserTemperatureGraph(),
              );
            },
            openBuilder: (context, action) =>
                const UserRespiratoryStatExtended(),
          ),
        ),
      ],
    );
  }
}
