import 'package:brahmaverse/game_map.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: Icon(Icons.sports_esports),
          onPressed: () {
            // Game Controller Icon action (if needed)
          },
        ),
        title: Text('BrahmaVerse'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              // Navigate to Profile Screen
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Left align elements
          children: [
            const SizedBox(height: 50),
            // Logo at the top (Centered)
            // Profile picture (Centered)
            Center(
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.grey[700],
                child: CircleAvatar(
                  radius: 60,
                  backgroundImage:
                      AssetImage('assets/images/profileimg.png'), // Replace with your profile image asset
                ),
              ),
            ),
            const SizedBox(height: 15),
            // Name
            Center(
              child: Text(
                'Sheldon Cooper',
                style: const TextStyle(
                  fontSize: 22,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'BoldFont', // Updated font family
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Email
            Padding(
              padding: const EdgeInsets.only(left: 10.0), // Added left padding
              child: Row(
                children: [
                  const Icon(Icons.email, color: Colors.white, size: 28),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      'sheldoncooper05@gmail.com',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'BoldFont', // Updated font family
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            // Phone number
            Padding(
              padding: const EdgeInsets.only(left: 10.0), // Added left padding
              child: Row(
                children: [
                  const Icon(Icons.phone, color: Colors.white, size: 28),
                  const SizedBox(width: 15),
                  Text(
                    '9988789702',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'BoldFont', // Updated font family
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 20),
            // Phone number
            Padding(
              padding: const EdgeInsets.only(left: 10.0), // Added left padding
              child: Row(
                children: [
                  const Icon(Icons.location_city, color: Colors.white, size: 28),
                  const SizedBox(width: 15),
                  Text(
                    'Pune, Maharashtra',
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontFamily: 'BoldFont', // Updated font family
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Color(0xFF1D1D2D), // Matches your app's theme
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        currentIndex: 1, // Set Game Map as the current index
        onTap: (index) {
          if (index == 0) {
            // Navigate to Home Screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          } else if (index == 1) {
            // Navigate to Profile Screen
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => GameMapScreen()),
            );
          }
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Game Map'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
