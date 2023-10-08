import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Question 1',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: AutofillHints.countryCode),
        ),
        const SizedBox(height: 35),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Next Question'),
        )
      ],
    ));
  }
}
