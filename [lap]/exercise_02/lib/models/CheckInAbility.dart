import 'package:exercise_02/models/Employee.dart';

mixin CheckInAbility on Employee {
  void checkIn() => print("$name đã điểm danh");
}
