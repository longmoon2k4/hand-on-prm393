import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  double rating = 50;
  bool isMovieActive = false;
  String? selectedGenre;
  DateTime? selectedDate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 2 - Input Controls')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text('Rating (Slider)', style: Theme.of(context).textTheme.titleLarge),
          Slider(
            value: rating,
            max: 100,
            divisions: 100,
            label: rating.round().toString(),
            onChanged: (value) => setState(() => rating = value),
          ),
          Text('Current value: ${rating.round()}'),
          const SizedBox(height: 20),
          Text('Active (Switch)', style: Theme.of(context).textTheme.titleLarge),
          SwitchListTile(
            contentPadding: EdgeInsets.zero,
            title: const Text('Is movie active?'),
            value: isMovieActive,
            onChanged: (value) => setState(() => isMovieActive = value),
          ),
          const SizedBox(height: 12),
          Text('Genre (RadioListTile)', style: Theme.of(context).textTheme.titleLarge),
          ...['Action', 'Comedy'].map(
            (genre) => RadioListTile<String>(
              title: Text(genre),
              value: genre,
              groupValue: selectedGenre,
              onChanged: (value) => setState(() => selectedGenre = value),
            ),
          ),
          Text('Selected genre: ${selectedGenre ?? 'None'}'),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: () async {
              final date = await showDatePicker(
                context: context,
                firstDate: DateTime(2020),
                lastDate: DateTime(2035),
                initialDate: DateTime.now(),
              );
              if (date != null) setState(() => selectedDate = date);
            },
            child: Text(selectedDate == null
                ? 'Open Date Picker'
                : 'Date: ${selectedDate!.day}/${selectedDate!.month}/${selectedDate!.year}'),
          ),
        ],
      ),
    );
  }
}
