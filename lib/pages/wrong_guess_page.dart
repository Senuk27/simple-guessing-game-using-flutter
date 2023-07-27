import 'package:flutter/material.dart';

class WrongGuessPage extends StatelessWidget {
  const WrongGuessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wrong Guess')),
      backgroundColor: const Color.fromARGB(255, 221, 95, 95),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Sorry! Wrong guess. Please try again.'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}
