import 'package:brahmaverse/home_screen.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1D2D),
      appBar: AppBar(
        backgroundColor: Color(0xFF1D1D2D),
        elevation: 0,
        leading: IconButton(
  icon: const Icon(Icons.arrow_back, color: Colors.white),
  onPressed: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomeScreen()), // Replace `HomeScreen()` with your home screen widget
    );
  },
),
        centerTitle: true,
        title: const Text(
          'Settings',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontFamily: 'BoldFont', // Use your custom font
          ),
        ),
      ),
      body: 
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            // App logo and header
            Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/images/logo.png'), // Replace with your logo asset
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Project - BrahmaVerse',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'BoldFont', // Use your custom font
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            // Categories
            Row(
              children: [
                const Icon(Icons.language, color: Colors.white, size: 28),
                const SizedBox(width: 15),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      '• Edutainment,',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'BoldFont', // Use your custom font
                      ),
                    ),
                    Text(
                      '• Game Development',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontFamily: 'BoldFont', // Use your custom font
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Description
            Expanded(
              child: SingleChildScrollView(
                child: const Text(
                  'BrahmaVerse is a mobile app celebrating India’s traditional games, featuring an elegant interface showcasing games like Chaupar, Kanche, and Gilli Danda with details about their origins, rules, and cultural significance. Users can explore a Game Map to learn about the regional roots of each game. The app aims to preserve India’s gaming heritage and connect modern users to these timeless traditions.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'BoldFont',
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
