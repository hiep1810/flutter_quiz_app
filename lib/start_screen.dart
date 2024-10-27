import 'package:adv_basics/flutter_logo_with_questions.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        const FlutterLogoWithQuestions(),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: const Text(
            'Learn Flutter the fun way!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              side: const BorderSide(
                  color: Colors.transparent), // Transparent border
            ),
            icon: const Icon(Icons.play_arrow, color: Colors.white),
            label: const Text(
              'Start Quiz',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
