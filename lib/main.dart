import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(Color.fromARGB(255, 15, 109, 126),
              Color.fromARGB(255, 21, 66, 102))),
    ),
  );
}
