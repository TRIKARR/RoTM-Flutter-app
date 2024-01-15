import 'package:flutter/material.dart';

class UserTemperatureStatExtended extends StatefulWidget {
  const UserTemperatureStatExtended({super.key});

  @override
  State<UserTemperatureStatExtended> createState() =>
      _UserTemperatureStatExtendedState();
}

class _UserTemperatureStatExtendedState
    extends State<UserTemperatureStatExtended> {
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
