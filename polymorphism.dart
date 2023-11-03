class Employee {
  String? name;
  String? age;
  String? address;
  String? motherName;

  Employee({
    required String name,
    required String age,
    required String address,
    required String motherName,
  }) {
    this.name = name;
    this.age = age;
    this.address = address;
    this.motherName = motherName;
  }

  void printDataEmploye() {
    print("Employee constructor $name, $age, $address, $motherName, 1.000.000");
  }
}

class Manager extends Employee {
  Manager({
    required String name,
    required String age,
    required String address,
    required String motherName,
  }) : super(name: name, age: age, address: address, motherName: motherName);

  @override
  void printDataEmploye() {
    print("Employee constructor $name, $age, $address, $motherName, 3.000.000");
    super.printDataEmploye();
  }
}


class Director extends Manager {
  Director({
    required String name,
    required String age,
    required String address,
    required String motherName,
  }) : super(name: name, age: age, address: address, motherName: motherName);
}

void main() {
  Employee employee = Employee(
    name: "ijal",
    age: "30",
    address: "Jl. Pahlawan",
    motherName: "Siti",
  );

  Manager manager = Manager(
    name: "Budi",
    age: "40",
    address: "Jl. Pahlawan",
    motherName: "Siti",
  );

  Director director = Director(
    name: "Joko",
    age: "50",
    address: "Jl. Pahlawan",
    motherName: "Siti",
  );

  employee.printDataEmploye();
  manager.printDataEmploye();
  director.printDataEmploye();
}
