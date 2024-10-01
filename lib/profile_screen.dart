import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String imageUrl;

  const ProfileScreen({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Detail"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Hero(
                tag: "profile_pict",
                child: Image.network(
                  imageUrl,
                  height: 200,
                  width: 200,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const Icon(
                      Icons.error,
                      size: 100,
                      color: Colors.red,
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Kevin Alfito',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Cirebon',
              style: TextStyle(
                fontSize: 21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
