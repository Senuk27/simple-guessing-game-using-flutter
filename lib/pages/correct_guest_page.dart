import 'package:flutter/material.dart';

class CorrectGuessPage extends StatelessWidget {
  const CorrectGuessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Guess Game',
      )),
      backgroundColor: const Color.fromARGB(255, 156, 236, 134),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Congratulations! You guessed it right. My secret number is 7',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/', (route) => false);
              },
              child: const Text("Start the game Again"),
            ),
            const SizedBox(
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
