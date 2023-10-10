
import 'package:flutter/material.dart';

class StyledText extends StatelessWidget{

  // const StyledText(String text, {super.key}): outputText = text;
  StyledText(this.text, {super.key});

  // final cause the text will only be set once using the value received from the 
  // class instantiation (with the constructor), and won't be changed.
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 28),
        );
  }
}