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
import 'package:lap_04/mockdata/menuItemData.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  final List<MenuItemData> menuList = const [
    MenuItemData(title: 'Exercise 1: Core Widget Demo', screen: Exercise01()),
    MenuItemData(title: 'Exercise 2: Input controls', screen: Exercise02()),
    MenuItemData(title: 'Exercise 3: Layout', screen: Exercise03()),
    MenuItemData(title: 'Exercise 4: App Structure', screen: Exercise04()),
    MenuItemData(title: 'Exercise 5: Common UI', screen: Exercise05()),
  ];

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
        child: ListView.builder(
          itemCount: menuList.length,
          itemBuilder: (context, index) {
            final item = menuList[index];
            return _buildMenu(
              title: item.title,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => item.screen),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildMenu({required String title, required VoidCallback onTap}) {
    return Container(
      child: Material(
        color: Colors.white54,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0,
            vertical: 6.0,
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w900,
              color: Colors.black87,
            ),
          ),
          trailing: const Icon(
            Icons.navigate_next_outlined,
            color: Colors.black87,
          ),
          onTap: onTap,
        ),
      ),
    );
  }
}
