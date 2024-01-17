import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:rotm/models/rotmStatCard.dart';
import 'package:rotm/views/RotmInteractServices/services_gridview.dart';

class UserInteractionMenu extends StatefulWidget {
  const UserInteractionMenu({super.key});

  @override
  State<UserInteractionMenu> createState() => _UserInteractionMenuState();
}

class _UserInteractionMenuState extends State<UserInteractionMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          children: [
            const ROTMStatCard(),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 400,
              width: 400,
              color: Colors.deepPurple.shade900,
              child: const InteractiveServices(),
            ),
          ],
        ),
      ),
    );
  }
}

//Medical Based LLM to talk with the user
