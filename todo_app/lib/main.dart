import 'package:flutter/material.dart';
import 'package:todo_app/todo_app.dart';

void main() => runApp(ToDO());

class ToDO extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'To DO',
      theme: ThemeData(
        primaryColor: Colors.yellow
      ),
      home: TodoApp(),
    );
  }
}
