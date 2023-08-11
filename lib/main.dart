import 'package:flutter/material.dart';
import 'package:my_first_application/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(151, 151, 42, 8),
        body: GradientContainer.purple(),
      ),
    ),
  );
}
