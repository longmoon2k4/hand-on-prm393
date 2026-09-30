import 'model/Genres.dart';

void main() {
  List<Genre> movies = Genre.values;
  List<String> titleList = movies.map((e) => e.value).toList();
  print(titleList);

}