import 'package:flutter/material.dart';

class AnswerScreen extends StatelessWidget {
  const AnswerScreen({super.key});

  // List<Map<String, Object>> getSummaryData{
  //   final List<Map<String, Object>> summary = [];

  //   for (var i = 0; i < chosenAnswers.lenght; i++) {
  //     summary.add{
  //       {
  //         'questions_index': i,
  //         'question': questions[i].text,
  //         'correct_answer': q
  //       }
  //     }

  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
          backgroundColor: Colors.lightGreen,
          body: Padding(
            padding: const EdgeInsets.all(40),
            child: Center(
                child: SizedBox(
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('You answered X of Y correct answers'),
                  const SizedBox(height: 30),
                  const Text('Question and answers'),
                  const SizedBox(height: 30),
                  OutlinedButton.icon(
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.white,
                        surfaceTintColor: Colors.white),
                    icon: const Icon(Icons.repeat),
                    onPressed: () {
                      selectedAnswers = [];
                    },
                    label: const Text("Restart Quiz"),
                  )
                ],
              ),
            )),
          )),
    );
  }
}
