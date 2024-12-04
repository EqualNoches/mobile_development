import 'package:quizz_app/src/models/question.dart';

class QuizzController {
  int _questionNumber = 0;
  int _questionsMade = 0;

  List<Question> _questionBank = [
    Question(
        question: "The first dual-core CPU was the Intel Pentium D.",
        answer: false),
    Question(
        question:
            "To bypass US Munitions Export Laws, the creator of the PGP published all the source code in book form",
        answer: true),
    Question(
        question:
            "The common software-programming acronym \"I18N\" comes from the term \"Interlocalization\"",
        answer: false),
    Question(
        question:
            "Early RAM was directly seated onto the motherboard and could not be easily removed.",
        answer: true)
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
    _questionsMade++;
  }

  bool quizFinished() {
    if (_questionsMade == _questionBank.length) {
      _questionNumber = 0;
      _questionsMade = 0;
      return true;
    }
    return false;
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  int getTotalNumber() {
    return _questionBank.length;
  }
}
