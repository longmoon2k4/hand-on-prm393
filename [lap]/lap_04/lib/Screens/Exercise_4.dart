import 'package:flutter/material.dart';

class Exercise4 extends StatefulWidget {
  const Exercise4({super.key});

  @override
  State<Exercise4> createState() => _Exercise4AppState();
}

class _Exercise4AppState extends State<Exercise4> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: _isDarkMode ? ThemeData.dark(useMaterial3: true) : ThemeData.light(useMaterial3: true),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 4 - App Structure'),
          actions: [
            Row(
              children: [
                const Text('Dark'),
                Switch(
                  value: _isDarkMode,
                  onChanged: (value) {
                    setState(() {
                      _isDarkMode = value;
                    });
                  },
                ), //[cite: 2]
              ],
            ),
            const SizedBox(width: 16),
          ],
        ),

        body: const Center(
          child: Text('This is a simple screen with theme toggle.'),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
