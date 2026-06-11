import 'package:flutter/material.dart';
import 'LoginPage.dart';

void main() {
  runApp(const WallpaperApp());
}

class WallpaperApp extends StatelessWidget {
  const WallpaperApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Wallpaper App",
      theme: ThemeData.light(),
      home: const Loginpage(),
    );
  }
}

