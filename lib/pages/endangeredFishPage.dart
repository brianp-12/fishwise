// lib/pages/page_one.dart
import 'package:flutter/material.dart';

class endangeredFishPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Endangered Fish")),
      body: Center(child: Text("This is Page One")),
    );
  }
}
