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
    var sleep = responseData["sleep"];
    var pulse = responseData["pulse"];
    var oxy = responseData["oxy"];
    // Store the "temp" array in a variable
    UserRespData = resp;
    UserTempData = temp;
    UserRepoData = repoData;
    UserOxyData = oxy.toDouble();
    UserPulseData = pulse.toDouble();
    UserSleepData = sleep.toDouble();
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
                        return SizedBox(
                          height: 500,
                          width: MediaQuery.of(context).size.width,
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  const Color.fromARGB(255, 0, 0, 0),
                                              width: 4,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.deepPurple.shade900,
                                          ),
                                          height: 170,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 18.0, left: 18),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  const Color.fromARGB(255, 0, 0, 0),
                                              width: 4,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(105),
                                            color:
                                                const Color.fromARGB(255, 255, 0, 0),
                                          ),
                                          height: 150,
                                          width: 150,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  const Color.fromARGB(255, 0, 0, 0),
                                              width: 4,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(25),
                                            color: Colors.deepPurple.shade900,
                                          ),
                                          height: 250,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              15,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 30.0, left: 115),
                                        child: Container(
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color:
                                                  const Color.fromARGB(255, 0, 0, 0),
                                              width: 4,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: const Color.fromARGB(
                                                255, 0, 255, 247),
                                          ),
                                          height: 210,
                                          width: 210,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
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
