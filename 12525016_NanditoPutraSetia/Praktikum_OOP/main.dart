import 'persegi_panjang.dart';
import 'segitiga.dart';
import 'lingkaran.dart';

void main() {
  PersegiPanjang pp = PersegiPanjang(10, 5);
  Segitiga st = Segitiga(8, 6);
  Lingkaran lk = Lingkaran(7);

  print('=== PERHITUNGAN LUAS ===');

  print('\nPersegi Panjang');
  print('Luas: ${pp.hitungLuas()}');

  print('\nSegitiga');
  print('Luas: ${st.hitungLuas()}');

  print('\nLingkaran');
  print('Luas: ${lk.hitungLuas().toStringAsFixed(2)}');
}