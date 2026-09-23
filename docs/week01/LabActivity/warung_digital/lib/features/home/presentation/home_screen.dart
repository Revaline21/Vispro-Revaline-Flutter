import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(const HomeScreen());


class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Warung Digital')),
      body: const Center(
        child: Text('Belum ada menu'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}