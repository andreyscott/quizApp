
import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
   const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
Widget activeScreen =  StartScreen(switchScreen);

@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

void switchScreen() {
  setState(() {
    activeScreen = const QuestionScreen();
  });
}

@override 
Widget build (context) {
  return Material(
    home: Scaffold(

    )
  )
}
}