import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int secretNumber =
      7; // Change this number if you want a different secret number
  int guessesLeft = 3;
  final TextEditingController _controller = TextEditingController();
  String feedback = "";

  void checkGuess() {
    int? userGuess = int.tryParse(_controller.text);

    if (userGuess == secretNumber) {
      Navigator.pushNamed(context, '/correct');
    } else {
      guessesLeft--;
      if (guessesLeft == 0) {
        Navigator.pushNamed(context, '/gameover');
      } else {
        setState(() {
          feedback = "$guessesLeft of 3 chances are taken.";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Guess Game')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/guess.png',
              width: 250,
              height: 250,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "I have a secret number in my mind (1 - 10). You have 3 chances to guess it. Can you guess it",
                textAlign: TextAlign.center,
              ),
            ),
            Text(feedback),
            const SizedBox(height: 16),
            Container(
              width: 300, // Adjust the width of the TextField
              padding: const EdgeInsets.symmetric(
                  horizontal: 10), // Add padding for text
              decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.black, width: .5), // Add the border
              ),
              child: TextField(
                controller: _controller,
                keyboardType: TextInputType.number,
                inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly
                ],
                decoration: const InputDecoration(
                  hintText: "",
                  border: InputBorder
                      .none, // Remove the default border of TextField
                ),
                onChanged: (value) {
                  setState(() {});
                },
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                checkGuess();
              },
              child: const Text("Submit"),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
