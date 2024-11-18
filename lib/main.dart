import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor:
            Color(0xFF1A1E2A), // Dark blue background color
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Icon(Icons.arrow_back, color: Colors.white),
        actions: [
          Icon(Icons.menu, color: Colors.white),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Choose your',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
            Text(
              'need',
              style: TextStyle(
                fontSize: 32,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Home',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white54,
              ),
            ),
            Divider(
              color: Colors.white54,
              thickness: 1,
              endIndent: MediaQuery.of(context).size.width * 0.6,
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
                  MenuItem(
                    icon: Icons.language,
                    title: 'Fish Detector',
                    color: Colors.green,
                  ),
                  MenuItem(
                    icon: Icons.warning,
                    title: 'Endangered Fish',
                    color: Colors.yellow,
                  ),
                  MenuItem(
                    icon: Icons.campaign,
                    title: 'Report Fish!',
                    color: Colors.blue,
                  ),
                  MenuItem(
                    icon: Icons.phone,
                    title: 'Contact Us',
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1A1E2A),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tune, color: Colors.white54),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.show_chart, color: Colors.white54),
            label: '',
          ),
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;

  const MenuItem({
    required this.icon,
    required this.title,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Color(0xFF2B3142),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: color, size: 28),
          ),
          SizedBox(width: 16),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}
