import 'dart:io';

void main() {
  stdout.write("Masukan Tanggal: ");
  String inputTanggal = stdin.readLineSync()?.trim() ?? '';

  stdout.write("Masukan Bulan: ");
  String inputBulan = stdin.readLineSync()?.trim() ?? '';

  stdout.write("Masukan Tahun: ");
  String inputTahun = stdin.readLineSync()?.trim() ?? '';

  int? tanggal = int.tryParse(inputTanggal);
  int? bulan = int.tryParse(inputBulan);
  int? tahun = int.tryParse(inputTahun);

  print('');

  if (tanggal == null || bulan == null || tahun == null) {
    print("Hanya menerima format angka.");
  } else {
    bool valid = true;

    if (tanggal < 1 || tanggal > 31) {
      print('Anda Salah Memasukan Tanggal');
      valid = false;
    }
    if (bulan < 1 || bulan > 12) {
      print('Anda Salah Memasukan Bulan');
      valid = false;
    }
    if (tahun < 1000 || tahun > 2999) {
      print('Anda Salah Memasukan Tahun');
      valid = false;
    }

    if (valid) {
      print('$tanggal – $bulan – $tahun');
    }
  }
}
