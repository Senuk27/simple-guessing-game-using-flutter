import 'package:flutter/material.dart';
import 'package:flutter_application_12/pages/correct_guest_page.dart';
import 'package:flutter_application_12/pages/game_over_page.dart';
import 'package:flutter_application_12/pages/home_page.dart';
import 'package:flutter_application_12/pages/wrong_guess_page.dart';

void main() {
  runApp(const NumberGuessingGame());
}

class NumberGuessingGame extends StatelessWidget {
  const NumberGuessingGame({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number Guessing Game',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/correct': (context) => const CorrectGuessPage(),
        '/wrong': (context) => const WrongGuessPage(),
        '/gameover': (context) => const GameOverPage(),
      },
    );
  }
}
