import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  late double _alas;
  late double _tinggi;

  // Constructor
  Segitiga(double alas, double tinggi) {
    setAlas(alas);
    setTinggi(tinggi);
  }

  void setAlas(double value) {
    if (value < 0) value *= -1;
    _alas = value;
  }

  double getAlas() => _alas;

  void setTinggi(double value) {
    if (value < 0) value *= -1;
    _tinggi = value;
  }

  double getTinggi() => _tinggi;

  @override
  double hitungLuas() {
    return 0.5 * _alas * _tinggi;
  }
}