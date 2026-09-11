//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

class User {
  final String name;
  final String email;
  User({required this.name, required this.email});

  User.fromJson(Map<String, dynamic> json)
    : name = json['name'],
      email = json['email'];
  @override
  String toString() {
    return 'Tên: $name | Email: $email';
  }
}
