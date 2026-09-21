import 'package:exercise_02/models/CheckInAbility.dart';
import 'package:exercise_02/models/Employee.dart';

class Developer extends Employee with CheckInAbility {
  Developer({required super.name});

  @override
  void work() => print("$name đang viết code.");
}
