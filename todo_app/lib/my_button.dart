import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.onPress, required this.label});

  final void Function()? onPress;
  final String label;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(

      onPressed: onPress,
      child: Text(label),
      color: Theme.of(context).primaryColor,
    );
  }
}
