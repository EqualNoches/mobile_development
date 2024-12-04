import 'package:flutter/material.dart';
import 'package:quizz_app/src/views/quizz_page.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: QuizzPage(),
    );
  }
}
