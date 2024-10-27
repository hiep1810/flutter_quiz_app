import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/result_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen;
  List<String> _selectedAnswers = [];

  @override
  void initState() {
    super.initState();
    activeScreen = StartScreen(switchScreen);
  }

  void switchScreen() {
    setState(() {
      activeScreen = activeScreen.runtimeType == StartScreen
          ? QuestionsScreen(onSelectAnswer: chooseAnswer)
          : StartScreen(switchScreen);
    });
  }

  void restartQuiz() {
    setState(() {
      _selectedAnswers = [];
      activeScreen = StartScreen(switchScreen);
    });
  }

  void chooseAnswer(String answer) {
    _selectedAnswers.add(answer);

    if (_selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultsScreen(
          chosenAnswers: _selectedAnswers,
          onRestart: restartQuiz,
        );
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purple,
        body: Center(
          child: Container(
            child: activeScreen,
          ),
        ),
      ),
    );
  }
}
