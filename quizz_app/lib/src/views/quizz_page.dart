import 'package:flutter/material.dart';
import 'package:quizz_app/src/controllers/quizz_controller.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({
    super.key,
  });

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {
  final quizController = QuizzController();
  int _correctAnswer = 0;

  void checkAnswer(bool userAnswer) {
    setState(() {
      bool correctAnswer = quizController.getCorrectAnswer();
      if (userAnswer == correctAnswer) {
        score.add(Icon(
          Icons.check,
          color: Colors.green,
        ));
        _correctAnswer++;
      } else {
        score.add(Icon(
          Icons.close,
          color: Colors.red,
        ));
      }
      quizController.nextQuestion();
    });
    if (quizController.quizFinished()) {
      print("Quiz finished");
      FinishedQuiz();
      score = [];
      _correctAnswer = 0;
      return;
    }
  }

  Future<bool?> FinishedQuiz() {
    if (quizController.getTotalNumber() / 2 < _correctAnswer) {
      return Alert(
          context: context,
          type: AlertType.success,
          title: "Quiz Finished",
          desc:
              "Su puntuación ha sido de: \n ${_correctAnswer} / ${quizController.getTotalNumber()}\n Ha pasado la prueba",
          buttons: [
            DialogButton(
              child: Text("LISTO!", style: TextStyle(
                color: Colors.white,
              ),),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ]).show();
    } else {
      return Alert(
        context: context,
        type: AlertType.error,
        title: "Quiz Finished",
        desc:
            "Su puntuación ha sido de: \n ${_correctAnswer} / ${quizController.getTotalNumber()} \n Se ha quemado",
      ).show();
    }
  }

  List<Icon> score = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 5,
                child: Center(
                    child: Text(
                  quizController.getQuestionText(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                )),
              ),
              Container(
                height: 60,
                child: Expanded(
                  child: MaterialButton(
                    color: Colors.green,
                    height: 30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      checkAnswer(true);
                    },
                    child: Text('True',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 60,
                child: Expanded(
                  child: MaterialButton(
                    color: Colors.red,
                    height: 30,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    onPressed: () {
                      checkAnswer(false);
                    },
                    child: Text('False',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        )),
                  ),
                ),
              ),
              Wrap(
                runSpacing: 4.8,
                children: score,
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
