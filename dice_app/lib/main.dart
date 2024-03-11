
import 'package:flutter/material.dart';
import 'gradient_container.dart';
void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
           Color.fromARGB(255, 240, 34, 255),
           Color.fromARGB(255, 34, 89, 255),
        ),
      ),
    )
  );
}

