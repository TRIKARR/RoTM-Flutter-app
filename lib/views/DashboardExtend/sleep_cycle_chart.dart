import 'package:flutter/material.dart';

class UserSleepChartExtended extends StatefulWidget {
  const UserSleepChartExtended({super.key});

  @override
  State<UserSleepChartExtended> createState() => _UserSleepChartExtendedState();
}

class _UserSleepChartExtendedState extends State<UserSleepChartExtended> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your App Title'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
                context); // This will pop the current screen and go back.
          },
        ),
      ),
      body: const Center(
        child: Text('Your Scaffold Body'),
      ),
    );
  }
}
