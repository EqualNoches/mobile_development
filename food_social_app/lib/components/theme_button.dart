import 'package:flutter/material.dart';

// This class creates a button that is contained in a widget for the changing
//  of the theme of the application
class ThemeButton extends StatelessWidget {
  // This si the constructor
  ThemeButton({super.key, required this.changeTheme});

  final Function changeTheme;

  //Creation of the widget
  @override
  Widget build(BuildContext context) {
    // this line checks that the screen has a brightness theme set as light
    final isBright = Theme.of(context).brightness == Brightness.light;
    return IconButton(
        onPressed:(){
          changeTheme(!isBright);
        },
        icon: isBright
            ? Icon(Icons.light_mode_outlined)
            : Icon(Icons.dark_mode_outlined)
    );
  }
}
