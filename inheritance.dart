// Classs or Blueprint (Parent)
class Laptop {
  // properti
  String? name;
  String? brand;
  // constructor
  Laptop({required String name, required String brand}) {
    this.name = name;
    this.brand = brand;
  }

  void printName() {
    print("Laptop constructor $name, $brand name");
  }
}

// Classs or Blueprint (Child)
class MacBook extends Laptop {
  int? createYear;
  // constructor
  MacBook(
      {required String name, required String brand, required int createYear})
      : super(name: name, brand: "Apple") {
    display();
  }

  void display() {
    super.printName();
  }
}

void main() {
  // Objek
  MacBook(
    name: "Acer",
    brand: "Apple",
    createYear: 2021,
  );
}