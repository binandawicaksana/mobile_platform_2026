import 'dart:io';

void main() {
  stdout.write('Masukan Nama Depan: ');
  String namaDepan = stdin.readLineSync()!;

  stdout.write('Masukan Nama Belakang: ');
  String namaBelakang = stdin.readLineSync()!;

  stdout.write('Masukan Nilai A: ');
  int a = int.parse(stdin.readLineSync()!);

  stdout.write('Masukan Nilai B: ');
  int b = int.parse(stdin.readLineSync()!);

  print('');
  print('Nama Lengkap: $namaDepan $namaBelakang');
  print('Hasil Penjumlahan: ${a + b}');
  print('Hasil Pengurangan: ${a - b}');
  print('Hasil Perkalian: ${a * b}');
  print('Hasil Pembagian: ${a / b}');
}