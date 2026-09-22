import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    const movies = ['Avatar', 'Inception', 'Interstellar', 'Joker'];
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 3 - Layout Demo')),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(16),
            child: Text('Now Playing', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemCount: movies.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  leading: CircleAvatar(child: Text(movies[index][0])),
                  title: Text(movies[index]),
                  subtitle: const Text('Sample description'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
