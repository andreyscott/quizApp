import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  final String text; // <--- Add this line

  @override
  Widget build(context) {
    return Text(
      text,
      style: const TextStyle(
          color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),
    );
  }
}
