import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 1 - Core Widgets')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Welcome to Flutter UI', style: Theme.of(context).textTheme.headlineSmall),
          const SizedBox(height: 20),
          const Icon(Icons.movie_creation, size: 72, color: Colors.blue),
          const SizedBox(height: 20),
          Image.network(
            'https://images.unsplash.com/photo-1485846234645-a62644f84728?w=900',
            height: 190,
            fit: BoxFit.cover,
            errorBuilder: (_, __, ___) => Container(
              height: 190,
              color: Colors.blueGrey,
              alignment: Alignment.center,
              child: const Icon(Icons.image_not_supported, size: 48, color: Colors.white),
            ),
          ),
          const SizedBox(height: 20),
          const Card(
            child: ListTile(
              leading: Icon(Icons.star),
              title: Text('Movie Item'),
              subtitle: Text('This is a sample ListTile inside a Card.'),
            ),
          ),
        ],
      ),
    );
  }
}
