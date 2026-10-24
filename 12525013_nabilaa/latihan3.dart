import 'dart:io';   // Diperlukan untuk mengambil input dari terminal/console

void main() {
  print('=== PROGRAM VALIDASI TANGGAL, BULAN, DAN TAHUN ===');

  stdout.write('Masukkan Tanggal: ');
  String? inputTanggal = stdin.readLineSync();

  stdout.write('Masukkan Bulan: ');
  String? inputBulan = stdin.readLineSync();

  stdout.write('Masukkan Tahun: ');
  String? inputTahun = stdin.readLineSync();

  print('\n--- HASIL VALIDASI ---');

  int? tanggal = int.tryParse(inputTanggal ?? '');
  int? bulan = int.tryParse(inputBulan ?? '');
  int? tahun = int.tryParse(inputTahun ?? '');

  if (tanggal == null || bulan == null || tahun == null) {
    print('Hanya menerima format Angka');
  } 

  else if (tanggal < 1 || tanggal > 31) {
    print('Anda Salah Memasukan Tanggal');
  } 
  
  else if (bulan < 1 || bulan > 12) {
    print('Anda Salah Memasukan Bulan');
  } 
 
  else if (tahun < 1000 || tahun > 2999) {
    print('Anda Salah Memasukan Tahun');
  } 
  
  else {
    print('$tanggal – $bulan – $tahun');
  }
}