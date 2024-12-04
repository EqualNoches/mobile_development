import 'package:flutter/material.dart';
import 'package:navigation_proyect/views/start_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: StartPage()
    );
  }
}
