import 'dart:io';

void main() {
  stdout.write("Masukan Tanggal (1-31): ");
  String? inputTanggal = stdin.readLineSync();
  
  int? tanggal = int.tryParse(inputTanggal ?? '');
  if (tanggal == null) {
    print("Hanya menerima format Angka");
    return; 
  } else if (tanggal < 1 || tanggal > 31) {
    print("Anda Salah Memasukan Tanggal");
    return;
  }

  stdout.write("Masukan Bulan (1-12): ");
  String? inputBulan = stdin.readLineSync();
  
  int? bulan = int.tryParse(inputBulan ?? '');
  if (bulan == null) {
    print("Hanya menerima format Angka");
    return;
  } else if (bulan < 1 || bulan > 12) {
    print("Anda Salah Memasukan Bulan");
    return;
  }

  stdout.write("Masukan Tahun (1000-2999): ");
  String? inputTahun = stdin.readLineSync();
  
  int? tahun = int.tryParse(inputTahun ?? '');
  if (tahun == null) {
    print("Hanya menerima format Angka");
    return;
  } else if (tahun < 1000 || tahun > 2999) {
    print("Anda Salah Memasukan Tahun");
    return;
  }

  print("$tanggal - $bulan - $tahun");
}