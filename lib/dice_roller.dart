import 'dart:math';
import 'package:flutter/material.dart';
import 'package:dice_roll/styled_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1;

  void rollDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset('assets/dice-$currentDiceRoll.png', width: 175),
      TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(padding: const EdgeInsets.all(10)),
          child: const StyledText('Roll Dice'))
    ]);
  }
}
