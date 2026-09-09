import 'car.dart';

class ElectricCar extends Car {
  final int battery;

  ElectricCar({
    required super.name,
    required super.brand,
    required this.battery
  });

  @override
  void drive() => print('$name của thương hiệu $brand đang còn $battery%');
}
