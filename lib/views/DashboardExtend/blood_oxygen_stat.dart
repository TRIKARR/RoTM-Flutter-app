import 'package:flutter/material.dart';

class UserBloodOxygenStatExtended extends StatefulWidget {
  const UserBloodOxygenStatExtended({super.key});

  @override
  State<UserBloodOxygenStatExtended> createState() =>
      _UserBloodOxygenStatExtendedState();
}

class _UserBloodOxygenStatExtendedState
    extends State<UserBloodOxygenStatExtended> {
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
