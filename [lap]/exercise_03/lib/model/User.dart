class User {
  int id;
  String name;
  String? email;

  User({required this.id, required this.name, this.email});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json["id"],
      name: json["name"] ?? 'Khách',
      email: json["email"],
    );
  }

  void showProfile() {
    print("ID: $id, Name: $name, Email: ${email ?? 'Chưa cập nhật email'}");
  }
}
