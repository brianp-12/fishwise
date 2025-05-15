import 'package:flutter/material.dart';
import 'startPage.dart';
import 'welcomePage.dart';
import 'contactPage.dart';
import 'settings_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Set background image here
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fishWiseBackground.png'),
            fit: BoxFit.cover, // Makes sure the image covers the entire screen
          ),
        ),
        child: Column(
          children: [
            // Create a spacer to position image
            const SizedBox(height: 80), // Adjust as necessary for positioning
            Center(
              child: Image.asset(
                'assets/images/fishWiseLogo.png',
                height: 120, // Adjust the size of the logo image
              ),
            ),
            const SizedBox(height: 30), // Space between logo and text
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                'We have saved 0 fish so far!',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center, // Centers the text
              ),
            ),
            const SizedBox(height: 90), // Space between text and buttonS
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: 270, // Set the width to a fixed value
                  height: 110, // Set the height to a fixed value
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to the second screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StartPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black.withOpacity(0.5), // Semi-transparent black
                      foregroundColor: Colors.white, // Text color (e.g., white)
                      padding: EdgeInsets.zero, // Remove padding to maintain fixed size
                      textStyle: TextStyle(fontSize: 20), // Text size
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // Control the roundness of the corners
                      ),
                    ),
                    child: const Text('Get Started!'),
                  ),
                ),
              ),
            const SizedBox(height: 40), // Space between buttons
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                width: 270, // Set the width to a fixed value
                height: 110, // Set the height to a fixed value
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to the second screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WelcomePage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black.withOpacity(0.5), // Semi-transparent black
                    foregroundColor: Colors.white, // Text color (e.g., white)
                    padding: EdgeInsets.zero, // Remove padding to maintain fixed size
                    textStyle: TextStyle(fontSize: 20), // Text size
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20), // Control the roundness of the corners
                    ),
                  ),
                  child: const Text('Welcome to Fishwise!'),
                ),
              ),
            ),
            const SizedBox(height: 140), // Space between buttons
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center, // Center the row
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/settingsIcon.png', height: 40), // Settings Icon
                      onPressed: () {
                        // Navigate to the SettingsPage
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SettingsPage()),
                        );
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: TextButton(
                        onPressed: () {
                          // Navigate to the second screen
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ContactPage()),
                          );
                        },
                        style: TextButton.styleFrom(
                          backgroundColor: Colors.transparent, // Transparent background
                          foregroundColor: Colors.white, // Text color (white)
                          textStyle: TextStyle(fontSize: 20), // Text size
                          padding: EdgeInsets.zero, // No padding, optional based on your needs
                        ),
                        child: const Text('Contact Us'),
                      ),
                    ),
                    
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}