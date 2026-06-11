import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final favorites = ["1.jpg", "3.jpg", "5.jpg", "7.jpg", "9.jpg", "15.jpg"];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: favorites.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.65,
          ),
          itemBuilder: (context, index) {
            return Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    "assets/${favorites[index]}",
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),

                const Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.black54,
                    child: Icon(Icons.favorite, color: Colors.red, size: 18),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

