import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
              color: const Color.fromARGB(143, 255, 255, 255), width: 250),
          const SizedBox(height: 60),
          Text(
            'Learn Flutter the fun Way!!!',
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 237, 223, 252),
              fontSize: 24,
            ),
          ),
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
