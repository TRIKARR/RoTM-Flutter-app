import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavComponent extends StatefulWidget {
  const BottomNavComponent({super.key});

  @override
  State<BottomNavComponent> createState() => _BottomNavComponentState();
}

class _BottomNavComponentState extends State<BottomNavComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                fit: BoxFit.cover, height: 50, width: 50),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset("lib/assets/animated/chatbot.gif",
                fit: BoxFit.cover, height: 50, width: 50),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Image.asset("lib/assets/animated/menu.gif",
                fit: BoxFit.cover, height: 40, width: 40),
          ),
        ],
      ),
    );
  }
}
