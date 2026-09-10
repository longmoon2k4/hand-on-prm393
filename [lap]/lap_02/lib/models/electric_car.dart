//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

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
