import 'package:flutter/material.dart';

class ExtentedMentalHealthStats extends StatefulWidget {
  const ExtentedMentalHealthStats({super.key});

  @override
  State<ExtentedMentalHealthStats> createState() => _ExtentedMentalHealthStatsState();
}

class _ExtentedMentalHealthStatsState extends State<ExtentedMentalHealthStats> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Your App Title'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // This will pop the current screen and go back.
          },
        ),
      ),
      body: Center(
        child: Text('Your Scaffold Body'),
      ),
    );
  }
}