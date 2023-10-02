import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/quiz-logo.png', width: 280),
        const Text(
          'Learn Flutter the fun way',
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.white,
              fontFamily: AutofillHints.countryCode),
        ),
        const SizedBox(height: 35),
        OutlinedButton.icon(
          onPressed: startQuiz,
          style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text('Start Quiz'),
        )
      ],
    ));
  }
}
