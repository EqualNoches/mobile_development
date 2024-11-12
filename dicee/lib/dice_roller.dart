import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({
    super.key,
  });

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDice = 1;

  void RollDice() {
    setState(() {
      currentDice = randomizer.nextInt(6) + 1;
    });

    print(currentDice);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/dice-$currentDice.png',
          width: 200,
        ),
        SizedBox(
          height: 40,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: GestureDetector(
              onTap: () {
                RollDice();
              },
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Text(
                      'Roll Dice',
                      style: TextStyle(
                        fontSize: 28,
                      ),
                    )),
                width: double.infinity,
                height: 40,
              ),
            )),
      ],
    );
  }
}
