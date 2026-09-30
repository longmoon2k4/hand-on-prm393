import 'package:flutter/material.dart';
import 'package:lap_06/model/Genres.dart';

final List<Genre> listGenre = Genre.values;
final List<String> canSelectGenre = listGenre.map((e) => e.value).toList();

final List<String> sortType = ['A-Z', 'Z-A', 'Rating', 'Year'];

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String searchBox = '';
  String selectedSort = 'A-Z';
  List<Genre> selectedGenre = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.home),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Home()),
          ),
        ),
        title: Text(
          'Movie App',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: TextField(
                      onChanged: (value) {
                        setState(() {
                          searchBox = value;
                        });
                      },
                      decoration: InputDecoration(
                        hintText: 'Tìm kiếm tên phim...',
                        hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                        prefixIcon: const Icon(
                          Icons.search,
                          color: Color.fromARGB(255, 8, 8, 8),
                        ),
                        filled: true,
                        fillColor: const Color.fromARGB(255, 194, 194, 194),
                        contentPadding: const EdgeInsets.symmetric(vertical: 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none, // Bỏ viền đen mặc định
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                  SizedBox(
                    width: 110,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          if (selectedSort == 'A-Z') {
                            selectedSort = 'Z-A';
                          } else if (selectedSort == 'Z-A') {
                            selectedSort = 'Rating';
                          } else if (selectedSort == 'Rating') {
                            selectedSort = 'Year';
                          } else {
                            selectedSort = 'A-Z';
                          }
                        });
                      },
                      child: Text(
                        selectedSort,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8.0),
                ],
              ),
              const SizedBox(height: 8.0),
              const Text(
                'Chọn thể loại:',
                style: TextStyle(fontSize: 20, color: Colors.black),
              ),
              const SizedBox(height: 8.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 4.0,
                children: canSelectGenre.map((genre) {
                  final isSelected = selectedGenre.contains(
                    Genre.values.firstWhere((g) => g.value == genre),
                  );
                  return FilterChip(
                    label: Text(genre),
                    selected: isSelected,
                    onSelected: (selected) {
                      setState(() {
                        if (selected) {
                          selectedGenre.add(
                            Genre.values.firstWhere((g) => g.value == genre),
                          );
                        } else {
                          selectedGenre.removeWhere((g) => g.value == genre);
                        }
                      });
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
