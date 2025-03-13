import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Start Page"),
      ),
      body: Center(
        child: const Text(
          'Welcome to the Start Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
