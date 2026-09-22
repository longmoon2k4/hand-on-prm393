import 'package:flutter/material.dart';
import 'package:lap_04/model/MenuCardDemo.dart';
import 'package:lap_04/model/Screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: MainMenu(screens: MenuCardDemo),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MainMenu extends StatelessWidget {
  final List<Screen> screens;
  const MainMenu({super.key, required this.screens});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.apple),
        title: Title(
          color: Colors.blueAccent,
          child: Center(child: Text('Danh sách bài tập')),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var screen in screens)
              Card(
                child: ListTile(
                  title: Text(screen.title),
                  subtitle: Text(screen.subtitle ?? ''),
                  trailing: IconButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => screen.screens),
                    ),
                    icon: Icon(Icons.arrow_forward),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
