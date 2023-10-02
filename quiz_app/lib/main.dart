import 'package:flutter/material.dart';

import 'package:quiz_app/gradient.dart';

void main() {
  runApp(const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
    Color.fromARGB(255, 3, 91, 163),
    Color.fromARGB(255, 228, 226, 226),
  ))));
}
