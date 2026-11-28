import 'lingkaran.dart';
import 'persegi_panjang.dart';
import 'segitiga.dart';

void main() {
  PersegiPanjang persegiPanjang = PersegiPanjang(10, 5);
  Segitiga segitiga = Segitiga(8, 6);
  Lingkaran lingkaran = Lingkaran(7);

  print('Luas Persegi Panjang: ${persegiPanjang.hitungLuas()}');
  print('Luas Segitiga: ${segitiga.hitungLuas()}');
  print('Luas Lingkaran: ${lingkaran.hitungLuas()}');
}