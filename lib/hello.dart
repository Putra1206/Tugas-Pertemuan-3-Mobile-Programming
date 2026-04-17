import 'package:flutter/material.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hallo Page'),
      ),
      body: const Center(
        child: Text('Hello Page'),
      ),
    );
  }
}