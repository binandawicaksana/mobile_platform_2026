import 'dart:io';

void main(List<String> args) {
  var namaDepan = "Aura";
  var namaTengah = "Rizky";
  var namaBelakang = "Ramadhani";

  print("Masukan Nilai A:");
  var a = num.parse(stdin.readLineSync()!);

  print("Masukan Nilai B:");
  var b = num.parse(stdin.readLineSync()!);

  print("Nama Lengkap : ${namaDepan} ${namaTengah} ${namaBelakang}");
  print("Hasil Penjumlahan: ${a + b}");
  print("Hasil Pengurangan: ${a - b}");
  print("Hasil Perkalian: ${a * b}");
  print("Hasil Pembagian: ${a / b}");
}
