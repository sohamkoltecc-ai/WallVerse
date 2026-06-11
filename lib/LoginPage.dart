import 'package:flutter/material.dart';
import 'HomePage.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/bg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black,
                    const Color.fromARGB(10, 0, 0, 0),
                    Colors.black,
                  ],
                ),
              ),
            ),
          ),

          Positioned(
            left: 20,
            right: 20,
            bottom: 160,
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: const Size(0, 55),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
              icon: const Icon(
                Icons.navigate_next_rounded,
                color: Colors.black,
                size: 22,
              ),
              label: const Text(
                "Start Exploring",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ),
            ),
          ),

          Positioned(
            left: 20,
            right: 20,
            bottom: 60,
            child: Text(
              "Explore thousands of high-quality wallpapers and personalize your device with a single tap.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white70,
                height: 1.5,
              ),
            ),
          ),

          Positioned(
            top: 130,
            left: 70,
            child: Text(
              'WallVerse',
              style: TextStyle(
                color: Colors.white,
                fontSize: 60,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
