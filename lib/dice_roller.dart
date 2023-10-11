import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {

  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
   return _DiceRollerState();
  }
}

// Handles widget state for DiceRoller
class _DiceRollerState extends State<DiceRoller>{
  var currentDiceRoll = 2;
  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
    // Call this to function to reexecute the widget's build() method
    // with the new value for activeDiceImage
    setState(() {
      // add the 1 otherwise, the max would be at 5 (0-5)
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [ //the variable was injected to the string using the $ symbol.
        Image.asset('assets/images/dice-$currentDiceRoll.png', width: 200),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            padding: EdgeInsets.all(20),
            foregroundColor: Colors.white,
            textStyle: TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }

}