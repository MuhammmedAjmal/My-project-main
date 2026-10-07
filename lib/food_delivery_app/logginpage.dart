import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black, // Background color
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Image.network(
                "https://play-lh.googleusercontent.com/Io2VaFgUh6CGG6j6YwXehaTgKLo0Qu7n1iT3QxAvzcKsDncinStiM5CIYl8tPiq3rltFqSXlljwsRyAfYvyPMQ",
              ), // Logo
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: CircularProgressIndicator(
              color: Colors.green, // Loading indicator color
            ),
          ),
        ],
      ),
    );
  }
}
