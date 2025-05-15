import 'package:flutter/material.dart';
import 'package:myapp/widgets/Dropdown.dart';

class SearchDetectorPage extends StatelessWidget {
  const SearchDetectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Searchbar Detector",
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            decorationThickness: 2.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
          child: MyDropdown(
            items: [
              'Acropora globiceps Coral',
              'Argentine Angelshark',
              'Boulder Star Coral',
              'African Coelacanth',
              'Atlantic Humpback Dolphin'
            ],
            initialValue: 'Acropora globiceps Coral',
          
        ),
      ),
    );
  }
}
