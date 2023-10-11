import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';
import 'package:dice_roller/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;


class GradientContainer extends StatelessWidget {
  // positional args by default are always required.
  // named args are optional - so you need to add the required keyword.
  GradientContainer(this.colorOne, this.colorTwo, {super.key});

  // Constructor function that can be called to set the colors instead of typing
  // them in manually. const cause they can't be changed.
  GradientContainer.purple()
      : colorOne = Colors.deepPurple,
        colorTwo = Colors.indigo;

  final Color colorOne;
  final Color colorTwo;

  

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: [colorOne, colorTwo],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(
        child: DiceRoller()
      ),
    );
  }
}

// class GradientContainer extends StatelessWidget {
//   // positional args by default are always required.
//   // named args are optional - so you need to add the required keyword.
//   const GradientContainer({super.key, required this.colors});

//   final List<Color> colors;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//             colors: colors,
//             begin: startAlignment,
//             end: endAlignment),
//       ),
//       child: Center(child: StyledText('Wagwan!')),
//     );
//   }
// }
