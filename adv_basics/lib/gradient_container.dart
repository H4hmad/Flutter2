import 'package:flutter/material.dart';

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
              OutlinedButton.icon(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    // padding: const EdgeInsets.only(top: 20),
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 101, 64, 202),
                    textStyle: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  icon: const Icon(Icons.arrow_right_alt_outlined),
                  label: const Text('Start Quiz')),
              const SizedBox(height: 60),
            ],
          ),
        ));
  }
}
