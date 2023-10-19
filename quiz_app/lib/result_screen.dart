import 'package:flutter/material.dart';
import 'package:quiz_app/data/question.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key, required this.chooseAnswer});

  final List<String> chooseAnswer;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];
    for (var i = 0; i < chooseAnswer.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answer[0],
        'user_answer': chooseAnswer[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        child: Container(
            margin: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('You answered some correctly'),
                const SizedBox(
                  height: 30,
                ),
                const Text('list of answer and question...'),
                const SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Restart and stuff'),
                )
              ],
            )));
  }
}
