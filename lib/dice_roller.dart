import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    Random random = new Random();
    int num = random.nextInt(7);
    setState(() {
      if (num == 1) {
        activeDiceImage = 'assets/images/dice-1.png';
      } else if (num == 2) {
        activeDiceImage = 'assets/images/dice-2.png';
      } else if (num == 3) {
        activeDiceImage = 'assets/images/dice-3.png';
      } else if (num == 4) {
        activeDiceImage = 'assets/images/dice-4.png';
      } else if (num == 5) {
        activeDiceImage = 'assets/images/dice-5.png';
      } else if (num == 6) {
        activeDiceImage = 'assets/images/dice-6.png';
      }
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}
