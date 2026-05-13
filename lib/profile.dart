import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}
class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: const Color.fromARGB(176, 175, 14, 14),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/images/profile.jpg'),
            ),
            SizedBox(height: 20),
            Text(
              "Nama: Moch Fahri Putra",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "Email: fahri@gmail.com",
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}