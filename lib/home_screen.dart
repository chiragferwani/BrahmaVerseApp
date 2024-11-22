import 'package:flutter/material.dart';
import 'game_details.dart';
import 'profile_screen.dart';
import 'game_map.dart';
import 'settings.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, String>> games = [
    {'title': 'Chaupar', 'image': 'assets/images/chaupar.png', 'desc': 'Chaupar, an ancient Indian board game, is a strategy-based game similar to Ludo, played with dice and pebbles or wooden pieces. Originating in India, it was popular among royalty, particularly during the Mughal era. The game involves moving pieces around a board according to dice rolls, with the goal of reaching a designated home position. Chaupar reflects Indias rich history of board games and strategic thinking, promoting critical thinking and social interaction. It remains a symbol of Indias cultural legacy and intellectual tradition.'},
    {'title': 'Kanche', 'image': 'assets/images/kanche.png', 'desc': 'Kanche, a traditional Indian game, involves shooting small marbles with precision to hit targets or other marbles. Played on bare ground, it enhances skill, strategy, and hand-eye coordination. Popular among children, it reflects Indias cultural heritage, fostering social bonding and passing down traditions through generations. The games simplicity and competitive spirit make it timeless and cherished.'},
    {'title': 'Gilli Danda', 'image': 'assets/images/gilli.png', 'desc': 'Gilli Danda is a popular Indian street game that involves two main pieces: a small wooden stick called gilli and a larger stick known as danda. The objective is to strike the gilli with the danda to launch it into the air and then hit it again to score points, similar to a mix of cricket and baseball. Played outdoors, Gilli Danda requires skill, precision, and agility. It has been a cherished traditional game in India, fostering physical fitness, coordination, and teamwork, while reflecting the countrys rich sporting culture.'},
    {'title': 'Lagori', 'image': 'assets/images/lagori.png', 
    'desc': 'Lagori, also known as Seven Stones, is a popular Indian outdoor game that combines teamwork, strategy, and agility. Played with a ball and a stack of seven flat stones, the objective is to knock down the pile and rebuild it before being hit by the opposing teams ball. Rooted in Indian tradition, Lagori promotes physical fitness, coordination, and collaboration. This energetic game has been enjoyed across generations, highlighting Indias cultural emphasis on communal play and outdoor activities.'},
    {'title': 'Kho-Kho', 'image': 'assets/images/khokho.png', 'desc': 'Kho Kho is a fast-paced team sport played between two teams, where one team tries to tag members of the opposing team while they run between poles. The game involves a mix of strategy, agility, and quick reflexes, with players alternating between attacking and defending roles. Rooted in ancient India, Kho Kho promotes teamwork, speed, and coordination. It is widely played across schools and communities, reflecting Indias rich sports culture and emphasizing physical fitness and tactical thinking.'},
    {'title': 'HopScotch', 'image': 'assets/images/hopscotch.png', 'desc': 'Hopscotch, known as Stapu or Kith Kith in India, is a traditional game that involves hopping through a series of numbered squares drawn on the ground. Players toss a marker into a square and hop on one foot to retrieve it while avoiding specific squares. This game, requiring balance, coordination, and focus, has been played for centuries, often by children. It reflects Indias cultural heritage and emphasis on physical activity in a fun and interactive way, fostering both individual skill and social interaction.'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21), // Dark background
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
                MaterialPageRoute(builder: (context) => SettingsScreen()),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Play The Legacy!',
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'BoldFont',
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: games.length,
                itemBuilder: (context, index) {
                  final game = games[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => GameDetails(
                            title: game['title']!,
                            description: game['desc']!,
                            imagePath: game['image']!,
                          ),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              image: DecorationImage(
                                image: AssetImage(game['image']!),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          game['title']!,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'BoldFont',
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
      backgroundColor: Colors.deepPurple,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: 0, // Set this dynamically if needed
      onTap: (index) {
        if (index == 1) {
          // Navigate to Game Map Screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => GameMapScreen()),
          );
        } else if (index == 2) {
          // Navigate to Profile Screen
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfileScreen()),
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
