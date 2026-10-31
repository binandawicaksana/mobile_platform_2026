import 'dart:io';

void main() {
  stdout.write("masukan tanggal : ");
  String? tanggal = stdin.readLineSync();

  stdout.write("masukan bulan : ");
  String? bulan = stdin.readLineSync();

  stdout.write("masukan tahun : ");
  String? tahun = stdin.readLineSync();

  int tanggalint = int.parse(tanggal!);
  int bulanint = int.parse(bulan!);
  int tahunint = int.parse(tahun!);
  if (tanggalint < 1 || tanggalint > 31) {
    print("tanggal yang anda masukan kurang atau lebih");
  } else if (bulanint < 1 || bulanint > 12) {
    print("bulan yang anda masukan tidak sesuai");
  } else if (tahunint < 1000 || tahunint > 2026) {
    print("tahun yang anda masukan terlalu lama atau terlalu jauh");
  } else {
    print("kesalah penulisan");
  }
}
