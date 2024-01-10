import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BottomNavComponent extends StatefulWidget {
  const BottomNavComponent({super.key});

  @override
  State<BottomNavComponent> createState() => _BottomNavComponentState();
}

class _BottomNavComponentState extends State<BottomNavComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 0.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.deepPurple.shade900,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset("lib/assets/animated/menu2.gif"),
            ),
          ),
        ),
        title: Text("DASHBOARD",
            style: GoogleFonts.getFont(
              'Orbitron',
              fontSize: 25,
              color: const Color.fromARGB(255, 255, 255, 255),
              fontWeight: FontWeight.bold,
            )),
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
                onPressed: () {},
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.deepPurple.shade900,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple.shade900,
        color: const Color.fromARGB(255, 255, 255, 255),
        animationDuration: const Duration(milliseconds: 250),
        animationCurve: Curves.easeInOut,
        height: 70,
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
