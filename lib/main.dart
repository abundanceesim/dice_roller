// main.dart
// Author: Abundance Esim
// Created: 09-10-2023
import 'package:flutter/material.dart';

// main entry point of the application. Similar to main(String[] args) in Java.
// Gets automatically executed by the device on run, which is why it is never called anywhere.
void main(){

  // helps to render the GUI on screen. requires one arg (the widget or widget tree)
  // Widget for a single widget, and widget tree for multiple nested widgets.
  runApp(MaterialApp(home: Text('Hello World!')));
}