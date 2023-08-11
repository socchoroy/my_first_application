import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class RoolDice extends StatefulWidget {
  const RoolDice({super.key});
  @override
  State<RoolDice> createState() {
    return _RoolDiceState();
  }
}

class _RoolDiceState extends State<RoolDice> {
  var currentDiceRoll = 2;

  void roolDice() {
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
    // setState(() {
    //   activeDiceImage = 'assets/dice-images/dice-4.png';
    // });
    // setState(() {
    //   activeDiceImage = 'assets/dice-images/dice-3.png';
    // });
    // setState(() {
    //   activeDiceImage = 'assets/dice-images/dice-1.png';
    // });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset('assets/dice-images/dice-$currentDiceRoll.png', width: 200),
        const SizedBox(height: 20),
        TextButton(
          onPressed: roolDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            // padding: const EdgeInsets.all(40),
          ),
          child: const Text('ROOL DICE'),
        ),
      ],
    );
  }
}
