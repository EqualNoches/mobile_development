import 'dart:math';

import 'package:flutter/material.dart';

import 'dice_roller.dart';

const begin = Alignment.topLeft;
const end = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.purple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: begin, end: end, colors: [color1, color2])),
        child: Center(
          child: DiceRoller(),
        ),
      ),
    );
  }
}

