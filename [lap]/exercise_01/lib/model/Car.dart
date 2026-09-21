import 'package:exercise_01/model/Vehicle.dart';

class Car extends Vehicle{
  bool isElectric;

  Car({required super.brand,required super.year, required this.isElectric});

  Car.tesla(int year)
    : isElectric = true, super(brand: 'Tesla',year: year);

  @override
  void startEngine(){
    isElectric ? print('Xe điện đang chạy') : print('Xe xăng đang chạy');
  }
}