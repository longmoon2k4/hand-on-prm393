//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:flutter/material.dart';

class Exercise2 extends StatefulWidget {
  const Exercise2({super.key});

  @override
  State<Exercise2> createState() => _Exercise2State();
}

class _Exercise2State extends State<Exercise2> {
  double _sliderValue = 25.0;
  bool _isEnable = false;
  String? _selectedValue = 'Image';
  DateTime? _selectedTime;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 2 - Input Control')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 8),
            Card(
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      child: Text(
                        'Rating (Slider)',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),

                    const SizedBox(height: 8),
                    Row(
                      children: [
                        Expanded(
                          child: Slider(
                            value: _sliderValue,
                            min: 0,
                            max: 100,
                            divisions: 100,
                            label: _sliderValue.round().toString(),
                            onChanged: (value) {
                              setState(() {
                                _sliderValue = value;
                              });
                            },
                          ),
                        ),
                        SizedBox(
                          width: 45,
                          child: Text(
                            '${_sliderValue.round()}',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
