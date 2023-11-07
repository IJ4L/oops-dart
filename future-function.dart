Future<int> fetchingData() async {
  print("Fetching data...");
  return await Future.delayed(Duration(seconds: 4), () => 10);
}

void main() async {
  int angka = await fetchingData();
  print("Angka = $angka");
}