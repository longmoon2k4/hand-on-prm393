//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:flutter/material.dart';
import 'package:lap_04/exercises/exe_01.dart';
import 'package:lap_04/exercises/exe_02.dart';
import 'package:lap_04/exercises/exe_03.dart';
import 'package:lap_04/exercises/exe_04.dart';
import 'package:lap_04/exercises/exe_05.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.apple),
        title: const Text(
          'sm1l3_d3f4ult_app',
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
        ),
        elevation: 1,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: ListView(
          children: [
            _buildMenu(
              title: 'Exercise 1: Core Widget Demo',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Exercise01()),
                );
              },
            ),
            _buildMenu(
              title: 'Exercise 2: Input controls',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Exercise02()),
                );
              },
            ),
            _buildMenu(
              title: 'Exercise 3: Layout',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Exercise03()),
                );
              },
            ),
            _buildMenu(
              title: 'Exercise 4: App Structure',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Exercise04()),
                );
              },
            ),
            _buildMenu(
              title: 'Exercise 5: Common UI',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Exercise05()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenu({required String title, required VoidCallback onTap}) {
    return Container();
  }
}
