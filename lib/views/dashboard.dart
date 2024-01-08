import 'package:flutter/material.dart';

class UserDashBoard extends StatefulWidget {
  const UserDashBoard({super.key});

  @override
  State<UserDashBoard> createState() => _UserDashBoardState();
}

class _UserDashBoardState extends State<UserDashBoard> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("User Dashboard"),
      ),
    );
  }
}
