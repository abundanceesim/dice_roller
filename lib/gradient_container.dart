import 'package:flutter/material.dart';
import 'package:dice_roller/styled_text.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Color.fromRGBO(103, 58, 183, 1), Colors.purple],
            begin: startAlignment,
            end: endAlignment),
      ),
      child: Center(
        child: StyledText('Wagwan!')
      ),
    );
  }
}
