import 'dart:io';

// Class induk
class BangunDatar {
  double hitungLuas() {
    return 0;
  }
}

// Class Persegi Panjang
class PersegiPanjang extends BangunDatar {
  double panjang;
  double lebar;

  PersegiPanjang(this.panjang, this.lebar);

  @override
  double hitungLuas() {
    return panjang * lebar;
  }
}

// Class Segitiga
class Segitiga extends BangunDatar {
  double alas;
  double tinggi;

  Segitiga(this.alas, this.tinggi);

  @override
  double hitungLuas() {
    return 0.5 * alas * tinggi;
  }
}

// Class Lingkaran
class Lingkaran extends BangunDatar {
  double jariJari;

  Lingkaran(this.jariJari);

  @override
  double hitungLuas() {
    return 3.14 * jariJari * jariJari;
  }
}

void main() {
  print("=== PROGRAM LUAS BANGUN DATAR ===");
  print("1. Persegi Panjang");
  print("2. Segitiga");
  print("3. Lingkaran");

  stdout.write("Pilih bangun datar (1-3): ");
  int pilihan = int.parse(stdin.readLineSync()!);

  if (pilihan == 1) {
    stdout.write("Masukkan panjang: ");
    double panjang = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan lebar: ");
    double lebar = double.parse(stdin.readLineSync()!);

    PersegiPanjang pp = PersegiPanjang(panjang, lebar);

    print("Luas Persegi Panjang = ${pp.hitungLuas()}");
  } else if (pilihan == 2) {
    stdout.write("Masukkan alas: ");
    double alas = double.parse(stdin.readLineSync()!);

    stdout.write("Masukkan tinggi: ");
    double tinggi = double.parse(stdin.readLineSync()!);

    Segitiga s = Segitiga(alas, tinggi);

    print("Luas Segitiga = ${s.hitungLuas()}");
  } else if (pilihan == 3) {
    stdout.write("Masukkan jari-jari: ");
    double r = double.parse(stdin.readLineSync()!);

    Lingkaran l = Lingkaran(r);

    print("Luas Lingkaran = ${l.hitungLuas()}");
  } else {
    print("Pilihan tidak valid!");
  }
}
