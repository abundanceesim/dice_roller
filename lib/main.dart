// main.dart
// Author: Abundance Esim
// Created: 09-10-2023
import 'package:flutter/material.dart';

// main entry point of the application. Similar to main(String[] args) in Java.
// Gets automatically executed by the device on run, which is why it is never called anywhere.
void main() {
  // helps to render the GUI on screen. requires one arg (the widget or widget tree)
  // Widget for a single widget, and widget tree for multiple nested widgets.
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 229, 81, 255),
        body: GradientContainer()
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget{

  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Color.fromRGBO(103, 58, 183, 1), Colors.purple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: const Center(
            child: Text(
              'Hello World!',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ),
        );
  }


}
