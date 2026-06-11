import 'package:flutter/material.dart';
import 'Pages/HomeScreenPage.dart';
import 'Pages/ExploreScreenPage.dart';
import 'Pages/FavouriateScreenPage.dart';
import 'Pages/DownloadScreenPage.dart';
import 'Pages/ProfilePage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> pages = const [
    HomeScreen(),
    ExploreScreen(),
    FavoriteScreen(),
    DownloadScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 20,
        shadowColor: Colors.black26,
        surfaceTintColor: Colors.transparent,
        title: const Text(
          'WallVerse',
          style: TextStyle(
            fontSize: 30,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const ProfilePage()),
              );
            },
            icon: const Icon(Icons.person_outline),
          ),
        ],
      ),

      body: pages[selectedIndex],

      bottomNavigationBar: Container(
        height: 70,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 15),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: .12),
              blurRadius: 20,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => setState(() => selectedIndex = 0),
              icon: Icon(
                selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                color: selectedIndex == 0 ? Colors.black : Colors.grey,
              ),
            ),

            IconButton(
              onPressed: () => setState(() => selectedIndex = 1),
              icon: Icon(
                selectedIndex == 1 ? Icons.explore : Icons.explore_outlined,
                color: selectedIndex == 1 ? Colors.black : Colors.grey,
              ),
            ),

            IconButton(
              onPressed: () => setState(() => selectedIndex = 2),
              icon: Icon(
                selectedIndex == 2 ? Icons.favorite : Icons.favorite_outline,
                color: selectedIndex == 2 ? Colors.black : Colors.grey,
              ),
            ),

            IconButton(
              onPressed: () => setState(() => selectedIndex = 3),
              icon: Icon(
                selectedIndex == 3 ? Icons.download : Icons.download_outlined,
                color: selectedIndex == 3 ? Colors.black : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
