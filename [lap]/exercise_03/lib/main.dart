import 'package:exercise_03/model/User.dart';

void main() {
  Map<String, dynamic> rawData1 = {
    "id": 1,
    "name": "Nam",
    "email": "nam@fpt.edu.vn",
  };
  Map<String, dynamic> rawData2 = {"id": 2, "name": null, "email": null};

  User user1 = User.fromJson(rawData1);
  user1.showProfile();

  User user2 = User.fromJson(rawData2);
  user2.showProfile();
}
