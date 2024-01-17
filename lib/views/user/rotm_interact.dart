import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:rotm/models/rotmStatCard.dart';

class UserInteractionMenu extends StatefulWidget {
  const UserInteractionMenu({super.key});

  @override
  State<UserInteractionMenu> createState() => _UserInteractionMenuState();
}

class _UserInteractionMenuState extends State<UserInteractionMenu> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: SafeArea(
        child: Column(
          children: [
            ROTMStatCard(),
          ],
        ),
      ),
    );
  }
}

//Medical Based LLM to talk with the user
