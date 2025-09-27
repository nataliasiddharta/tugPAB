class kalkulator{
  double penjumlahan(double bil1, double bil2) {
    return bil1 + bil2;
  }

  double pengurangan(double bil1, double bil2) {
    return bil1 - bil2;
  }

  double perkalian(double bil1, double bil2) {
    return bil1 * bil2;
  }

  double bagian(double bil1, double bil2) {
    if (bil2 == 0) {
      throw Exception("Penghitungan tidak berhasil!");
    }
    return bil1 / bil2;
  }
}

