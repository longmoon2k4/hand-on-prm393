import 'Genres.dart';

class Movie {
  final String title;
  final int year;
  final List<Genre> genres;
  final String posterUrl;
  final double rating;

  Movie({
    required this.title,
    required this.year,
    required this.genres,
    required this.posterUrl,
    required this.rating,
  });

  factory Movie.fromJson(Map<String, dynamic> json) {
    List<String> genre = json['genres'].split(',');
    List<Genre> listGenre = genre.map((e) {
      return Genre.values.firstWhere(
              (str) => str.value == e, orElse: () => Genre.dif
      );
    }).toList();
    return Movie(
      title: json['title'],
      year: json['year'],
      genres: listGenre,
      posterUrl: json['posterUrl'],
      rating: json['rating'],
    );
    }
  }


final List<Movie> allMovies = [
  Movie(
    title: 'Dune: Part Two',
    year: 2024,
    genres: [Genre.sciFi, Genre.adventure, Genre.drama],
    posterUrl:
        'https://images.unsplash.com/photo-1534447677768-be436bb09401?w=400',
    rating: 8.6,
  ),
  Movie(
    title: 'Deadpool & Wolverine',
    year: 2024,
    genres: [Genre.action, Genre.comedy],
    posterUrl:
        'https://images.unsplash.com/photo-1509198397868-475647b2a1e5?w=400',
    rating: 8.0,
  ),
  Movie(
    title: 'Interstellar',
    year: 2014,
    genres: [Genre.sciFi, Genre.drama],
    posterUrl:
        'https://images.unsplash.com/photo-1451187580459-43490279c0fa?w=400',
    rating: 8.7,
  ),
  Movie(
    title: 'The Dark Knight',
    year: 2008,
    genres: [Genre.action, Genre.crime, Genre.drama],
    posterUrl:
        'https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?w=400',
    rating: 9.0,
  ),
];
