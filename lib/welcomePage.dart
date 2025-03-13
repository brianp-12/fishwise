import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Page"),
      ),
      body: Center(
        child: const Text(
          'Welcome to the Welcome Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
