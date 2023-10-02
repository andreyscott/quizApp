import 'package:flutter/material.dart';

import 'package:quiz_app/gradient.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 2, 57, 146),
                Color.fromARGB(255, 3, 11, 25),
              ], begin: Alignment.topLeft, end: Alignment.bottomLeft)),
              child: ac))));
}
