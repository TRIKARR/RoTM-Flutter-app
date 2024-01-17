import 'package:flutter/material.dart';

class InteractiveServices extends StatefulWidget {
  const InteractiveServices({super.key});

  @override
  State<InteractiveServices> createState() => _InteractiveServicesState();
}

class _InteractiveServicesState extends State<InteractiveServices> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: [
        Container(
          height: 100,
          width: 100,
          color: const Color.fromARGB(255, 163, 39, 39),
          child: const Text("1"),
        ),
        Container(
          height: 10,
          width: 10,
          // ignore: prefer_const_constructors
          color: Color.fromARGB(255, 9, 57, 181),
          child: const Text("1"),
        ),
        Container(
          height: 10,
          width: 10,
          color: const Color.fromARGB(255, 255, 225, 2),
          child: const Text("1"),
        ),
        Container(
          height: 10,
          width: 10,
          color: const Color.fromARGB(255, 78, 223, 12),
          child: const Text("1"),
        ),
      ],
    );
  }
}
