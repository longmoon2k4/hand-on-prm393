import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  bool isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: isDarkMode
          ? ThemeData.dark(useMaterial3: true)
          : Theme.of(context),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Exercise 4 - App Structure & Theme'),
          actions: [
            Switch(
              value: isDarkMode,
              onChanged: (value) => setState(() => isDarkMode = value),
            ),
          ],
        ),
        body: Center(
          child: Text(isDarkMode ? 'Dark theme selected' : 'This is a simple screen with theme toggle.'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Floating action pressed')),
          ),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
