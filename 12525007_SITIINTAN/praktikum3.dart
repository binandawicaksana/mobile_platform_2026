import 'dart:io';

void main() {
  // Input Tanggal, Bulan, dan Tahun
  stdout.write('Masukkan Tanggal: ');
  String? inputTanggal = stdin.readLineSync();

  stdout.write('Masukkan Bulan: ');
  String? inputBulan = stdin.readLineSync();

  stdout.write('Masukkan Tahun: ');
  String? inputTahun = stdin.readLineSync();

  // Parsing String ke int
  int? tanggal = int.tryParse(inputTanggal ?? '');
  int? bulan = int.tryParse(inputBulan ?? '');
  int? tahun = int.tryParse(inputTahun ?? '');

  // Validasi Format Angka
  if (tanggal == null || bulan == null || tahun == null) {
    print('Hanya menerima format Angka');
  } else {
    // Validasi Tanggal (1 - 31)
    if (tanggal < 1 || tanggal > 31) {
      print('Anda Salah Memasukan Tanggal');
    }
    
    // Validasi Bulan (1 - 12)
    if (bulan < 1 || bulan > 12) {
      print('Anda Salah Memasukan Bulan');
    }
    
    // Validasi Tahun (1000 - 2999)
    if (tahun < 1000 || tahun > 2999) {
      print('Anda Salah Memasukan Tahun');
    }
    
    // Jika semuanya benar
    if ((tanggal >= 1 && tanggal <= 31) && 
        (bulan >= 1 && bulan <= 12) && 
        (tahun >= 1000 && tahun <= 2999)) {
      print('$tanggal - $bulan - $tahun');
    }
  }
}