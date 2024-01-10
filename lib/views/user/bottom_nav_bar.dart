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
      backgroundColor: Colors.deepPurple,
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.deepPurple,
        color: Colors.deepPurple.shade200,
        items: const [
          Icon(Icons.home),
          Icon(Icons.home),
          Icon(Icons.home),
        ],
      ),
    );
  }
}
