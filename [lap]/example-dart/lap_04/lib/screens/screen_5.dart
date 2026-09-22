import 'package:flutter/material.dart';

class Screen5 extends StatelessWidget {
  const Screen5({super.key});

  @override
  Widget build(BuildContext context) {
    const movies = ['Movie A', 'Movie B', 'Movie C', 'Movie D'];
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 5 - Common UI Fixes')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Correct ListView inside Column using Expanded',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (_, index) => ListTile(
                  leading: const Icon(Icons.movie),
                  title: Text(movies[index]),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
