import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(const Color.fromARGB(255, 2, 39, 70),
              const Color.fromARGB(255, 4, 67, 119))),
    ),
  );
}
