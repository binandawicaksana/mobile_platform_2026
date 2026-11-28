import 'dart:io';

// CLASS INDUK
abstract class BangunDatar {
  double hitungLuas();
}

// CLASS PERSEGI PANJANG
class PersegiPanjang extends BangunDatar {
  double _panjang;
  double _lebar;

  // Constructor
  PersegiPanjang(this._panjang, this._lebar);

  @override
  double hitungLuas() {
    return _panjang * _lebar;
  }
}

// CLASS SEGITIGA
class Segitiga extends BangunDatar {
  double _alas;
  double _tinggi;

  // Constructor
  Segitiga(this._alas, this._tinggi);

  @override
  double hitungLuas() {
    return 0.5 * _alas * _tinggi;
  }
}

// CLASS LINGKARAN
class Lingkaran extends BangunDatar {
  double _jariJari;

  // Constructor
  Lingkaran(this._jariJari);

  @override
  double hitungLuas() {
    return 3.14 * _jariJari * _jariJari;
  }
}

// FUNCTION UNTUK MEMBACA INPUT ANGKA
double inputAngka(String pesan) {
  stdout.write(pesan);
  return double.parse(stdin.readLineSync()!);
}

// PROGRAM UTAMA
void main() {
  print("================================");
  print("   PROGRAM LUAS BANGUN DATAR");
  print("================================");
  print("1. Persegi Panjang");
  print("2. Segitiga");
  print("3. Lingkaran");
  print("================================");

  stdout.write("Pilih bangun datar (1-3): ");
  String pilihan = stdin.readLineSync()!;

  BangunDatar bangun;

  switch (pilihan) {
    case "1":
      double panjang = inputAngka("Masukkan panjang: ");
      double lebar = inputAngka("Masukkan lebar: ");

      bangun = PersegiPanjang(panjang, lebar);
      print("Bangun datar: Persegi Panjang");
      break;

    case "2":
      double alas = inputAngka("Masukkan alas: ");
      double tinggi = inputAngka("Masukkan tinggi: ");

      bangun = Segitiga(alas, tinggi);
      print("Bangun datar: Segitiga");
      break;

    case "3":
      double jariJari = inputAngka("Masukkan jari-jari: ");

      bangun = Lingkaran(jariJari);
      print("Bangun datar: Lingkaran");
      break;

    default:
      print("Pilihan tidak tersedia!");
      return;
  }

  print("--------------------------------");
  print("Luas = ${bangun.hitungLuas()}");
  print("--------------------------------");
}
