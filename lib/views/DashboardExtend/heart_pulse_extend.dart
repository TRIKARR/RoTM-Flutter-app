import 'package:flutter/material.dart';

class UserHeartPulseStatExdended extends StatefulWidget {
  const UserHeartPulseStatExdended({super.key});

  @override
  State<UserHeartPulseStatExdended> createState() =>
      _UserHeartPulseStatExdendedState();
}

class _UserHeartPulseStatExdendedState
    extends State<UserHeartPulseStatExdended> {
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
