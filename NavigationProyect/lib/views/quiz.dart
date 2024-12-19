import 'package:flutter/material.dart';
import 'package:navigation_proyect/components/answer_button.dart';
import 'package:navigation_proyect/data/questions.dart';
import 'package:navigation_proyect/views/answer_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});


  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  List<String> selectedAnswers = [];

  // change questions index
  var currentQuestionIndex = 0;

  void answerQuestion() {
    setState(() {
      currentQuestionIndex++;
    });
    
  }

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
        child: Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  textAlign: TextAlign.center,
                  currentQuestion.text,
                  style: const TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                ...currentQuestion.getShuffledAnswers().map((answer) {
                  return AnswerButton(
                    text: answer,
                    onTap: () {
                      selectedAnswers.add(answer);
                      if (selectedAnswers.length == questions.length) {
                        selectedAnswers = [];
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return const AnswerScreen();
                        }));
                      } else {
                        answerQuestion();
                      }
                    },
                  );
                })
              ]),
        ),
      ),
    ));
  }
}
