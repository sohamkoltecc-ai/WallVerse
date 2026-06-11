import 'package:flutter/material.dart';

class DownloadScreen extends StatelessWidget {
  const DownloadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final downloads = ["2.jpg", "4.jpg", "6.jpg", "8.jpg", "10.jpg", "12.jpg", "14.jpg"];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: ListView.builder(
          itemCount: downloads.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.08),
                    blurRadius: 20,
                    offset: const Offset(0, 6),
                  ),
                ],
              ),
              child: ListTile(
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    "assets/${downloads[index]}",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  "Wallpaper ${index + 1}",
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: const Text("Downloaded"),
                trailing: const Icon(Icons.download_done, color: Colors.green),
              ),
            );
          },
        ),
      ),
    );
  }
}

