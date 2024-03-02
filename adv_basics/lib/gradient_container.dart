import 'package:flutter/material.dart';
import 'package:adv_basics/text-container.dart';
import 'package:flutter/widgets.dart';

const startAlignment = Alignment.topCenter;
const endAlignment = Alignment.bottomCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color, {super.key});
  final List<Color> color;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: color, begin: startAlignment, end: endAlignment),
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/images/quiz-logo.png', width: 300),
              const SizedBox(height: 60),
              const Text('Learn Flutter the fun Way!!!',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      fontFamily: "Bebas Neue")),
              const SizedBox(height: 20),
              const ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    // padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    backgroundColor: Color.fromARGB(255, 101, 64, 202),
                    textStyle: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  child: Text('Start Quiz')),
              const SizedBox(height: 60),
            ],
          ),
        ));
  }
}
