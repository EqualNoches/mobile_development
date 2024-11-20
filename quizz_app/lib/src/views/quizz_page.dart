import 'package:flutter/material.dart';
import 'package:quizz_app/src/controllers/quizz_controller.dart';

class QuizzPage extends StatefulWidget {
  const QuizzPage({
    super.key,
  });

  @override
  State<QuizzPage> createState() => _QuizzPageState();
}

class _QuizzPageState extends State<QuizzPage> {

  final quizController = QuizzController();
  void checkAnswer(bool userAnswer){
    setState(() {
      bool correctAnswer = quizController.getCorrectAnswer();
      if(userAnswer == correctAnswer){
        score.add(Icon(Icons.check, color: Colors.green,));
      }
      else{
        score.add(Icon(Icons.close, color: Colors.red,));
      }
      quizController.nextQuestion();

    });

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
                    child: Text(quizController.getQuestionText(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                ),
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
              Row(
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