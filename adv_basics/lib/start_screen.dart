import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;
  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png',
              color: const Color.fromARGB(143, 255, 255, 255), width: 300),
          const SizedBox(height: 60),
          const Text('Learn Flutter the fun Way!!!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  fontFamily: "Bebas Neue")),
          const SizedBox(height: 20),
          OutlinedButton.icon(
              onPressed: () {
                startQuiz();
              },
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
    );
  }
}
