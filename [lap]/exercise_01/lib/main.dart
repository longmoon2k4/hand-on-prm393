import 'package:exercise_01/model/Car.dart';

void main(){
  Car toyota =  Car(brand: 'Toyota', year: 2026, isElectric: false);
  toyota.startEngine();
  Car Tesla = Car.tesla(2030);
  Tesla.startEngine();
}