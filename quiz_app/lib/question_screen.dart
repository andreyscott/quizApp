import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/data/question.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({
    super.key,
    required this.onSelectAnswer,
  });

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  var currentQuestionIndex = 0;

  void answerQuestion(String selectedAnswers) {
    widget.onSelectAnswer(selectedAnswers);
    setState(() {
      currentQuestionIndex++;
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currentQuestionIndex];

    return Center(
        child: Container(
            margin: const EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(currentQuestion.text,
                    textAlign: TextAlign.center,
                    style: GoogleFonts.lato(
                        color: const Color.fromARGB(194, 255, 255, 255),
                        fontSize: 24,
                        fontWeight: FontWeight.bold)),
                const SizedBox(height: 35),
                ...currentQuestion.getShuffledAnswers().map((answer) {
                  return AnswerButton(
                      answerText: answer,
                      onTap: () {
                        answerQuestion(answer);
                      });
                }),
              ],
            )));
  }
}
