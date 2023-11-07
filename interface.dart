abstract class Vehicle {
  void start();
  void stop();
}

class Car implements Vehicle {
  String? name;
  Car({required String name}) {
    this.name = name; 
  }

  @override
  void start() {
    print("$name started");
  }

  @override
  void stop() {
    print("$name stopped");
  }
}

void main() {
  List<Map<String, Car>> allCar = [
    {"toyota": Car(name: 'Toyota')},
    {"lamborghini": Car(name: 'Lamborghini')},
    {"ferrari": Car(name: 'Ferrari')},
  ];

  allCar[0]["toyota"]!.stop();
}