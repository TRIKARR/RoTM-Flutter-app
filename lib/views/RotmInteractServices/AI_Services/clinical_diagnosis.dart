import 'package:flutter/material.dart';

class UserClinicalDiagnosis extends StatefulWidget {
  const UserClinicalDiagnosis({super.key});

  @override
  State<UserClinicalDiagnosis> createState() => _UserClinicalDiagnosisState();
}

class _UserClinicalDiagnosisState extends State<UserClinicalDiagnosis> {
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
        child: Text('Your Scaffold Body user'),
      ),
    );
  }
}
