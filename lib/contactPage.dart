import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Us"),
      ),
      body: Center(
        child: const Text(
          'Welcome to the Contact Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
