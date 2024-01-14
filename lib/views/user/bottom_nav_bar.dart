import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/views/user/browse.dart';
import 'package:rotm/views/user/dashboard.dart';
import 'package:rotm/views/user/rotm_interact.dart';
import 'dart:io' show Platform;

class BottomNavComponent extends StatefulWidget {
  const BottomNavComponent({super.key});

  @override
  State<BottomNavComponent> createState() => _BottomNavComponentState();
}

class _BottomNavComponentState extends State<BottomNavComponent> {
  double height = Platform.isAndroid ? 50 : 70;
  int _page = 0;
  final List<Widget> _pages = [
    const UserDashBoard(),
    const UserInteractionMenu(),
    const UserBrowseMenu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_page],
      backgroundColor: Colors.deepPurple.shade900,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple.shade900,
        color: const Color.fromARGB(255, 255, 255, 255),
        animationDuration: const Duration(milliseconds: 250),
        onTap: (index) {
          setState(() {
            _page = index;
          });
        },
        animationCurve: Curves.easeInOut,
        height: height,
        letIndexChange: (value) => true,
        items: [
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset("lib/assets/animated/pie-chart.gif",
                fit: BoxFit.cover, height: 40, width: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset("lib/assets/animated/chatbot.gif",
                fit: BoxFit.cover, height: 40, width: 40),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset("lib/assets/animated/interface.gif",
                fit: BoxFit.cover, height: 40, width: 40),
          ),
        ],
      ),
    );
  }
}
