// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:radar_chart/radar_chart.dart';
import 'package:rotm/models/radarchart.dart';

class UserBrowseMenu extends StatefulWidget {
  const UserBrowseMenu({super.key});

  @override
  State<UserBrowseMenu> createState() => _UserBrowseMenuState();
}

class _UserBrowseMenuState extends State<UserBrowseMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade900,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: IconButton(
              onPressed: () {},
              icon: Image.asset(
                "lib/assets/animated/magazine.gif",
              ),
            ),
            title: Text("BRoTM REPORT",
                style: GoogleFonts.getFont(
                  'Orbitron',
                  fontSize: 30,
                  color: const Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                )),
            automaticallyImplyLeading: false,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: const Color.fromARGB(255, 255, 255, 255),
                child: SafeArea(
                  child: Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 255, 255, 255)),
                        height: 340,
                        width: 200,
                      ),
                      Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 0, 0, 0)),
                        height: 340,
                        width: 220,
                        child: Center(
                          child: RadarChartSample1(),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
