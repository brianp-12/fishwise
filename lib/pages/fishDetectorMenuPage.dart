import 'package:flutter/material.dart';
import 'package:myapp/pages/detectorPages/ChatBot.dart';
import 'package:myapp/pages/detectorPages/imageDetectorPage.dart';
import 'package:myapp/pages/detectorPages/searchDetectorPage.dart';

class fishDetectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Fish Detector Menu",
          style: TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
            decorationColor: Colors.white,
            decorationThickness: 2.0,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fishWiseBackground2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Button 1
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: 270,
                  height: 110,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ChatBot()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'AI Detector',
                      style: TextStyle(
                        fontSize: 28,  
                        fontWeight: FontWeight.w900,  // Very bold text
                        letterSpacing: 1.5, // Optional: Adds spacing between letters for better emphasis
                        color: Colors.yellow,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40), // Space between button

              // Button 2
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: 270,
                  height: 110,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SearchDetectorPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Searchbar Detector',
                      style: TextStyle(
                        fontSize: 20,  // Slightly larger text
                        fontWeight: FontWeight.w900,  // Very bold text
                        letterSpacing: 1.2, // Optional: Adds spacing between letters for better emphasis
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 40), // Space between buttons

              // Button 2
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: SizedBox(
                  width: 270,
                  height: 110,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => imageDetectorPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.5),
                      foregroundColor: Colors.white,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Image Detector',
                      style: TextStyle(
                        fontSize: 20,  // Slightly larger text
                        fontWeight: FontWeight.w900,  // Very bold text
                        letterSpacing: 1.2, // Optional: Adds spacing between letters for better emphasis
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}