import 'package:flutter/material.dart';

class FoodTheme{
  //Stablish texts' theme = light
  static TextTheme lightTextTheme = TextTheme(
    //in case is set as bodyLarge
    bodyLarge: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    // In case is displayLarge
    displayLarge: TextStyle(
      fontSize: 32,
      fontWeight: FontWeight.bold,
        color: Colors.black
    ),
    displayMedium: TextStyle(
      fontSize: 21,
      fontWeight: FontWeight.w700,
      color: Colors.black
    ),
    displaySmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: Colors.black
    ),
    titleLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Colors.black
    )
  );

  //Stablish texts' theme = dark
  static TextTheme darkTextTheme = TextTheme(
      bodyLarge: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: Colors.white
      ),
      displayLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
      displayMedium: TextStyle(
          fontSize: 21,
          fontWeight: FontWeight.w700,
          color: Colors.white
      ),
      displaySmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white
      ),
      titleLarge: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: Colors.white
      )
  );

  // function to set the date as light
  static ThemeData light() {
    return ThemeData(
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
            backgroundColor: Colors.white,
            foregroundColor: Colors.black
        ),
        textTheme: lightTextTheme
    );
  }
  // Function to set theme as dark
    static ThemeData dark(){
      return ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: AppBarTheme(
              backgroundColor: Colors.grey.shade700,
              foregroundColor: Colors.white
          ),
          textTheme: darkTextTheme,
      );
  }
}