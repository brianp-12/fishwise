import 'package:flutter/material.dart';

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
            const SizedBox(height: 50), // Adjust as necessary for positioning
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
            const SizedBox(height: 50), // Space between text and button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the second screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => StartPage()),
                  );
                },
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.5), // Semi-transparent black
                  foregroundColor: Colors.white, // Text color (e.g., white)
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 45), // Adjust size
                  textStyle: TextStyle(fontSize: 20), // Text size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Control the roundness of the corners
                  ),
                ),
                child: const Text('Get Started!'),
              ),
            ),
            const SizedBox(height: 30), // Space between button and button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  // Navigate to the second screen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => WelcomePage()),
                  );
                },
                style:ElevatedButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.5), // Semi-transparent black
                  foregroundColor: Colors.white, // Text color (e.g., white)
                  padding: EdgeInsets.symmetric(horizontal: 80, vertical: 45), // Adjust size
                  textStyle: TextStyle(fontSize: 20), // Text size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20), // Control the roundness of the corners
                  ),
                ),
                child: const Text('Welcome!'),
              ),
            ),
            const SizedBox(height: 90), // Space between button and text
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0), // Optional padding adjustment
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
            )
          ],
        ),
      ),
    );
  }
}

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
