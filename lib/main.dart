// main.dart
// Author: Abundance Esim
// Created: 09-10-2023
import 'package:flutter/material.dart';
import 'package:dice_roller/gradient_container.dart';
// import './gradient_container.dart'; //this line is the same as the above line.

// main entry point of the application. Similar to main(String[] args) in Java.
// Gets automatically executed by the device on run, which is why it is never called anywhere.
void main() {
  // helps to render the GUI on screen. requires one arg (the widget or widget tree)
  // Widget for a single widget, and widget tree for multiple nested widgets.
  runApp(
     MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 229, 81, 255),
        body: GradientContainer.purple(),
      ),
    ),
  );
}
