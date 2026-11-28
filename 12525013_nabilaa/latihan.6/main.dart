import 'persegi_panjang.dart';
import 'segitiga.dart';
import 'lingkaran.dart';

void main() {
  // 1. Persegi Panjang
  PersegiPanjang kotak = PersegiPanjang(4.0, 6.0);
  print('Luas Persegi Panjang (${kotak.getPanjang()} x ${kotak.getLebar()}) = ${kotak.hitungLuas()}');

  // 2. Segitiga
  Segitiga segitiga = Segitiga(5.0, 8.0);
  print('Luas Segitiga (alas ${segitiga.getAlas()}, tinggi ${segitiga.getTinggi()}) = ${segitiga.hitungLuas()}');

  // 3. Lingkaran
  Lingkaran lingkaran = Lingkaran(7.0);
  print('Luas Lingkaran (r = ${lingkaran.getJariJari()}) = ${lingkaran.hitungLuas()}');
}