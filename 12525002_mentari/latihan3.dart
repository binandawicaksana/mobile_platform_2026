import 'dart:io';

void main() { 
  print("Masukkan Tanggal (1-31): ");
  String? inputTanggal = stdin.readLineSync();
  
  print("Masukkan Bulan (1-12): ");
  String? inputBulan = stdin.readLineSync();
  
  print("Masukkan Tahun (1000-2999): ");
  String? inputTahun = stdin.readLineSync();

  int? tanggal = int.tryParse(inputTanggal ?? '');
  int? bulan = int.tryParse(inputBulan ?? '');
  int? tahun = int.tryParse(inputTahun ?? '');

  if (tanggal == null || bulan == null || tahun == null) {
    print("Hanya menerima format Angka");
    return;
  }

  bool isError = false;

  if (tanggal < 1 || tanggal > 31) {
    print("Anda Salah Memasukan Tanggal");
    isError = true;
  }
  
  if (bulan < 1 || bulan > 12) {
    print("Anda Salah Memasukan Bulan");
    isError = true;
  }
  
  if (tahun < 1000 || tahun > 2999) {
    print("Anda Salah Memasukan Tahun");
    isError = true;
  }

  if (isError == true) {
    print("Data tidak valid / tidak ditemukan");
  } else {
    print("$tanggal - $bulan - $tahun");
  }
}