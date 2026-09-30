import 'package:flutter/material.dart';
import 'package:lap_06/model/Genres.dart';
import 'package:lap_06/model/Movie.dart';

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

  List<Movie> get visibleMovies {
    final result = allMovies.where((movie) {
      final title = movie.title.toLowerCase();
      final search = searchBox.toLowerCase();
      final matchSearch = title.contains(search);
      final matchGenre =
          selectedGenre.isEmpty ||
          movie.genres.any((genre) => selectedGenre.contains(genre));

      return matchSearch && matchGenre;
    }).toList();

    if (selectedSort == 'A-Z') {
      result.sort((a, b) => a.title.compareTo(b.title));
    } else if (selectedSort == 'Z-A') {
      result.sort((a, b) => b.title.compareTo(a.title));
    } else if (selectedSort == 'Rating') {
      result.sort((a, b) => b.rating.compareTo(a.rating));
    } else if (selectedSort == 'Year') {
      result.sort((a, b) => b.year.compareTo(a.year));
    }

    return result;
  }

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
              const Text(
                'Find a Movie',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
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
              const SizedBox(height: 16.0),
              Row(
                children: [
                  Text(
                    '${visibleMovies.length} phim được tìm thấy',
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  if (searchBox.isNotEmpty || selectedGenre.isNotEmpty)
                    TextButton(
                      onPressed: () {
                        setState(() {
                          searchBox = '';
                          selectedGenre.clear();
                        });
                      },
                      child: const Text('Xóa bộ lọc'),
                    ),
                ],
              ),
              const SizedBox(height: 8.0),
              LayoutBuilder(
                builder: (context, constraints) {
                  if (visibleMovies.isEmpty) {
                    return const Padding(
                      padding: EdgeInsets.all(24.0),
                      child: Center(
                        child: Text('Không tìm thấy phim phù hợp.'),
                      ),
                    );
                  }

                  if (constraints.maxWidth >= 600) {
                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: visibleMovies.length,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 12,
                            mainAxisSpacing: 12,
                            childAspectRatio: 0.75,
                          ),
                      itemBuilder: (context, index) {
                        return _movieCard(visibleMovies[index], true);
                      },
                    );
                  }

                  return Column(
                    children: visibleMovies
                        .map((movie) => _movieCard(movie, false))
                        .toList(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _movieCard(Movie movie, bool isWide) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12.0),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: isWide
            ? Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      movie.posterUrl,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  _movieText(movie),
                ],
              )
            : Row(
                children: [
                  Image.network(
                    movie.posterUrl,
                    width: 90,
                    height: 120,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 12.0),
                  Expanded(child: _movieText(movie)),
                ],
              ),
      ),
    );
  }

  Widget _movieText(Movie movie) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          movie.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4.0),
        Text(
          '${movie.year} - ${movie.genres.map((genre) => genre.value).join(', ')}',
        ),
        const SizedBox(height: 4.0),
        Row(
          children: [
            const Icon(Icons.star, size: 18, color: Colors.orange),
            const SizedBox(width: 4.0),
            Text(movie.rating.toString()),
          ],
        ),
      ],
    );
  }
}
