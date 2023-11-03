class Animal {
  String? name;
  int? jumlahKaki;
  int? umurHidup;

  Animal(
      {required String name, required int jumlahKaki, required int umurHidup}) {
    print("Berhasil Membuat Objek $name");
    this.name = name;
    this.jumlahKaki = jumlahKaki;
    this.umurHidup = umurHidup;
  }
}

void main() {
  Animal anjing = Animal(name: 'anjing', umurHidup: 20, jumlahKaki: 20);

  prinDataAnimalWithObject(animal: anjing);
}

void prinDataAnimalWithObject({required Animal animal}) {
  print(
    "nama ${animal.name} jumlah kaki ${animal.jumlahKaki} umur hidup ${animal.umurHidup}",
  );
}
