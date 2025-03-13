import 'package:flutter/material.dart';
import 'homePage.dart'; // Import HomePage
import 'startPage.dart'; // Import StartPage
import 'welcomePage.dart'; // Import WelcomePage
import 'contactPage.dart'; // Import ContactPage
import 'settingsPage.dart'; // Import SettingsPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
