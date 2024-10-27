import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({super.key, required this.questionIndex, required this.isCorrect});

  final int questionIndex;
  final bool isCorrect;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: isCorrect ? Colors.cyan : Colors.redAccent,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        ((questionIndex) + 1).toString(),
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
    );
  }
}
