// import 'dart:io';

// void main(List<String> args) {
//   print("Masukan nama depan: ");
//   String? namaDepan = stdin.readLineSync();
//   print("Nama depan kamu: $namaDepan");
// }

// import 'dart:io';

// void main(List<String> args) {
//   print("Masukan nama depan: ");
//   String? namaDepan = stdin.readLineSync();
  
//   print("Masukan nama belakang: ");
//   String? namaBelakang = stdin.readLineSync();
  
//   String namaLengkap = "$namaDepan $namaBelakang";
//   print("Nama Lengkap: $namaLengkap");

//     print("Masukan Nilai A: ");
//   String? inputA = stdin.readLineSync();
//   int a = int.parse(inputA!);
  
//   print("Masukan Nilai B: ");
//   String? inputB = stdin.readLineSync();
//   int b = int.parse(inputB!);
// }

import 'dart:io';
void main(List<String> args) {
  print("Masukan nama depan: ");
  String? namaDepan = stdin.readLineSync();

  print("Masukan nama belakang: ");
  String? namaBelakang = stdin.readLineSync();

  String namaLengkap = "$namaDepan $namaBelakang";
  print("Nama Lengkap: $namaLengkap");

  print("Masukan Nilai A: ");
  String? inputA = stdin.readLineSync();
  int a = int.parse(inputA!);

  print("Masukan Nilai B: ");
  String? inputB = stdin.readLineSync();
  int b = int.parse(inputB!);

  print("Hasil Penjumlahan: ${a + b}");
  print("Hasil Pengurangan: ${a - b}");
  print("Hasil Perkalian: ${a * b}");
  print("Hasil Pembagian: ${a / b}");
}