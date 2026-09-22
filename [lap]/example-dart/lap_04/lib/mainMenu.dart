import 'package:flutter/material.dart';
import 'package:lap_04/mockdatademo/mock.dart';

class MainMenu extends StatelessWidget {
  final List<Mock> menuItems;
  final bool isDarkMode;
  final ValueChanged<bool> onThemeChanged;

  const MainMenu({
    super.key,
    required this.menuItems,
    required this.isDarkMode,
    required this.onThemeChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lab 4 - Flutter UI Fundamentals')),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: menuItems.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final item = menuItems[index];
          return Card(
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),
              title: Text(item.title, style: const TextStyle(fontSize: 18)),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => item.screen),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: SafeArea(
        child: SwitchListTile(
          title: const Text('Dark mode'),
          value: isDarkMode,
          onChanged: onThemeChanged,
          secondary: const Icon(Icons.dark_mode_outlined),
        ),
      ),
    );
  }
}
