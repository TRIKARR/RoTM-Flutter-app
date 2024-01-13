import 'package:flutter/material.dart';

class SmolContainers extends StatefulWidget {
  const SmolContainers({super.key});

  @override
  State<SmolContainers> createState() => _SmolContainersState();
}

class _SmolContainersState extends State<SmolContainers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: const Color.fromARGB(255, 255, 255, 255),
    );
  }
}
