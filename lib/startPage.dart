import 'package:flutter/material.dart';
import 'pages/endangeredFishPage.dart';
import 'pages/fishDetectorPage.dart';
import 'pages/reportPage.dart';

class StartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          "Start Page",
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
              // Button 1 with White Outline Box above it
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // White outline box
                    Container(
                      width: 255, // Slightly smaller than the button
                      height: 95, // Slightly smaller than the button
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4, // White border width
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    // Button
                    Container(
                      width: 270,
                      height: 110,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => endangeredFishPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 184, 28, 28).withOpacity(0.5),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          textStyle: TextStyle(fontSize: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Report Fish'),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40), // Space between buttons

              // Button 2 with White Outline Box above it
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // White outline box
                    Container(
                      width: 295, // Slightly smaller than the button
                      height: 115, // Slightly smaller than the button
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 6, // White border width
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    // Button
                    Container(
                      width: 310,
                      height: 130,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => fishDetectorPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 51, 28, 184).withOpacity(0.5),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/images/fishIcon.png',
                              width: 60,
                              height: 60,
                            ),
                            SizedBox(width: 10),
                            Text(
                              'Fish Detector',
                              style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40), // Space between buttons

              // Button 3 with White Outline Box above it
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // White outline box
                    Container(
                      width: 255, // Slightly smaller than the button
                      height: 95, // Slightly smaller than the button
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 4, // White border width
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    // Button
                    Container(
                      width: 270,
                      height: 110,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => reportPage()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(255, 28, 184, 54).withOpacity(0.5),
                          foregroundColor: Colors.white,
                          padding: EdgeInsets.zero,
                          textStyle: TextStyle(fontSize: 20),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: const Text('Endangered Fish'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
