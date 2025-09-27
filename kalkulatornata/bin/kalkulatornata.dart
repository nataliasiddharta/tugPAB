import 'dart:io';
import 'kalkulator.dart';

void main(){
  var cal = kalkulator();

  while(true) {
    try {
      stdout.write("Masukkan Bilangan Pertama = ");
      double bil1 = double.parse(stdin.readLineSync()!);

      //input bilangan kedua
      stdout.write("Masukkan Bilangan Kedua = ");
      double bil2 = double.parse(stdin.readLineSync()!);

      //menampilkan menu operasi
      print("=== KALKULATOR ONLINE ===");
      print("1. Penjumalahan");
      print("2. Pengurangan");
      print("3. Perkalian");
      print("3. Pembagian");

      stdout.write("Pilih Operasi Perhitungan (1/2/3/4) :");
      String? pilihan = stdin.readLineSync();

      double hasil;

      //operasi sesuai pilihan
      switch (pilihan) {
        case '1':
          hasil = cal.penjumlahan(bil1, bil2);
          print("Hasil Penjumlahan: $bil1 + $bil2 = $hasil");
          break;
        case '2':
          hasil = cal.pengurangan(bil1, bil2);
          print("Hasil Pengurangan: $bil1 - $bil2 = $hasil");
          break;
        case '3':
          hasil = cal.perkalian(bil1, bil2);
          print("Hasil Pengurangan: $bil1 * $bil2 = $hasil");
        case '4':
          hasil = cal.bagian(bil1, bil2);
          print("Hasil Pembagian: $bil1 / $bil2 = $hasil");
          break;
        default:
          print("Pilihan anda salah!. Silahkan memilih pilihan 1-4");
          continue;
      }
      //apakah ingin mengulang program??
      stdout.write("Apakah anda ingin mengulangi perhitungan (y/t)? ");
      String? ulang = stdin.readLineSync();
      if (ulang?.toLowerCase() == 't') {
        print("Terimakasih!");
        break;
      }
      } catch (e) {
      print('Input tidak valid: ');
      break;
    }
  }
}

