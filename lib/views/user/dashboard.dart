// ignore: duplicate_ignore
// ignore: unused_import
// ignore_for_file: unused_import, duplicate_ignore

import 'dart:convert';
import 'dart:ffi';
// ignore: unused_import
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/models/service_calls.dart';
import 'package:rotm/userdata.dart';
import 'package:rotm/models/userdragablescroll.dart';
import 'package:rotm/models/week_data.dart';
// ignore: unused_import
import 'package:rotm/views/dashboardSections/section1.dart';
import 'package:rotm/views/dashboardSections/section2.dart';
import 'package:rotm/views/dashboardSections/section3.dart';
import 'package:rotm/views/dashboardSections/section4.dart';
import 'dart:io' show Platform;
// ignore: unused_import
import 'package:http/http.dart' as http;

class UserDashBoard extends StatefulWidget {
  const UserDashBoard({super.key});

  @override
  State<UserDashBoard> createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  final double fheigh = Platform.isAndroid ? 10.0 : 21;
  double sheigh = Platform.isAndroid ? 1.0 : 4;
  double theigh = Platform.isAndroid ? 5.0 : 15;
  double frheigh = Platform.isAndroid ? 5.0 : 15;
  double ftheigh = Platform.isAndroid ? 5.0 : 15;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // ignore: non_constant_identifier_names
  void ExtractUserRequest() async {
    var url = Uri.parse('${EndPoint}extract');
    var queryParams = {"id": BRoTM_UserID};
    var response = await http.get(url.replace(queryParameters: queryParams));
    var responseData =
        jsonDecode(response.body); // Add this line to parse the JSON response
    var repoData = responseData["report"];
    var temp = responseData["temp"];
    var resp = responseData["resp"];
    // Store the "temp" array in a variable
    UserRespData = resp;
    UserTempData = temp;
    UserRepoData = repoData;
    // ignore: avoid_print
    print(queryParams.toString());
  }

  @override
  void initState() {
    super.initState();
    ExtractUserRequest();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.deepPurple.shade900,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 0.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.deepPurple.shade900,
              ),
              child: IconButton(
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
                icon: Image.asset("lib/assets/animated/menu2.gif"),
              ),
            ),
          ),
          title: Center(
            child: Text("DASHBOARD",
                style: GoogleFonts.getFont(
                  'Orbitron',
                  fontSize: 25,
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontWeight: FontWeight.bold,
                )),
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.deepPurple.shade900,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90),
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
                height: 60,
                width: 60,
                child: IconButton(
                  icon: Image.asset(
                    "lib/assets/animated/profile.gif",
                    fit: BoxFit.cover,
                    height: 60,
                    width: 60,
                  ),
                  onPressed: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return const UserDragScrollBottomSheet();
                      },
                    );
                  },
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
              ),
            ),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.deepPurple.shade900,
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 60.0),
                child: Row(
                  children: [
                    Image.asset(
                      "lib/assets/images/logo.png",
                      height: 120.0, // Adjust the height as needed
                      width: 100.0, // Adjust the width as needed
                    ),
                    Text(
                      "BRoTM",
                      style: GoogleFonts.getFont(
                        'Orbitron',
                        fontSize: 45,
                        color: const Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              // Add other drawer items below if needed
            ],
          ),
        ),
        body: const Column(
          children: [
            SizedBox(
              height: 15,
            ),
            WeekDataSection(),
            // Just for testing out stuff
            SizedBox(
              height: 4,
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SectionLevelFour(),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: LevelOneSection()),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SectionLevelTwo()),
                      SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: SectionLevelThree()),
                      SizedBox(
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }
}
