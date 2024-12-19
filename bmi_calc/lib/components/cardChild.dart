import 'package:bmi_calc/constants.dart';
import 'package:flutter/material.dart';

class Cardchild extends StatelessWidget {
  const Cardchild({super.key, required this.icon, required this.label});

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}
