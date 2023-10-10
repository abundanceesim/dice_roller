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

  var activeDiceImage = 'assets/images/dice-2.png';

  void rollDice() {
   activeDiceImage = 'assets/images/dice-4.png';
   print('In activeDiceImage()');
  }

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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset('assets/images/dice-2.png', width: 200),
            TextButton(
                onPressed: rollDice,
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontSize: 28),
                ),
                child: Text('Roll Dice'),
                )
          ],
        ),
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
