import 'package:bmi_calc/constants.dart';
import 'package:bmi_calc/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            primaryColor: kBackGroundColor,
            scaffoldBackgroundColor: Colors.white,
            appBarTheme: AppBarTheme(
              backgroundColor: kBackGroundColor,
            )),
        title: 'Material App',
        home: HomeScreen());
  }
}
