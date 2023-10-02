import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  const Button({super.key});

  @override
  State<Button> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<Button> {
  var currentDiceRoll = 3;

  void sth() {}

  @override
  Widget build(context) {
    return Column(
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
        TextButton(
          onPressed: sth,
          style: TextButton.styleFrom(
            backgroundColor: Colors.transparent,
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          child: const Text('Start Quiz',
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
        ),
      ],
    );
  }
}
