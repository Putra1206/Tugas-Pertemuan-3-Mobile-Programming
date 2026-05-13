import 'package:flutter/material.dart';

class PageProfile extends StatelessWidget {
  const PageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/foto fahri.jpg',
              width: 150,
              height: 150,
            ),

            const SizedBox(height: 20),

            const Text(
              'Moch Fahri Putra',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              'Mahasiswa Sistem Informasi',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}