import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserInteractionMenu extends StatefulWidget {
  const UserInteractionMenu({super.key});

  @override
  State<UserInteractionMenu> createState() => _UserInteractionMenuState();
}

class _UserInteractionMenuState extends State<UserInteractionMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              onPressed: () {},
              icon: Image.asset("lib/assets/animated/menu2.gif"),
            ),
          ),
        ),
        title: Text("Interaction menu",
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
    );
  }
}
