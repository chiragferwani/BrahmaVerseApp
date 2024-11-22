import 'package:flutter/material.dart';

class GameDetails extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const GameDetails({
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontFamily: 'BoldFont',
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              description,
              
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'BoldFont',
                color: Colors.white70,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
      backgroundColor: Color(0xFF0A0E21), // Same background color
    );
  }
}
