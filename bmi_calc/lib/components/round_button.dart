import 'package:flutter/material.dart';

class MyRoundButton extends StatelessWidget {
  const MyRoundButton({
    super.key,
    required this.icon,
    this.onPressed,
  });

  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 20,
      onPressed: onPressed,
      shape: CircleBorder(),
      child: Icon(icon),
    );
  }
}
