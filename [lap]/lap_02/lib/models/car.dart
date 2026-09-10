//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//
class Car {
  final String name;
  final String brand;

  Car({required this.name, required this.brand});

  Car.fromHonda() : name = 'Xe máy', brand = 'Honda';
  void drive() => print('$name đang chạy');
}
