import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: Center(
        child: const Text(
          'Welcome to the Settings Page!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
