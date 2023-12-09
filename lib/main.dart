import 'dart:io';
import 'package:flutter/material.dart';
import 'package:deeplearning/HomePage.dart';
import 'package:tflite/tflite.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'willkommen zu Deep learning'),
    );
  }
}