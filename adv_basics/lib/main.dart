import 'package:flutter/material.dart';
import 'package:adv_basics/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer([
        Color.fromARGB(255, 65, 0, 177),
        Color.fromARGB(255, 101, 64, 202)
      ])),
    ),
  );
}
