class Car {
  final String name;
  final String brand;

  Car({required this.name, required this.brand});

  Car.fromHonda() : name = 'Xe máy', brand = 'Honda';
  void drive() => print('$name đang chạy');
}
