//      ____            _ _        ____             
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V / 
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/  
//                                                  
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lab 1 Demo'),
          backgroundColor: Colors.deepPurple,
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flutter_dash, size: 80, color: Colors.deepPurple),
              SizedBox(height: 20),
              Text(
                'Welcome to Flutter!',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                'Your first customized layout 😊',
                style: TextStyle(fontSize: 18, color: Colors.black54),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: null,
          backgroundColor: Colors.deepPurple,
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}