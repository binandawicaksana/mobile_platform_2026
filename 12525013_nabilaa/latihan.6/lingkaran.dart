import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  late double _jariJari;
  final double _phi = 3.14;

  // Constructor
  Lingkaran(double jariJari) {
    setJariJari(jariJari);
  }

  void setJariJari(double value) {
    if (value < 0) value *= -1;
    _jariJari = value;
  }

  double getJariJari() => _jariJari;

  @override
  double hitungLuas() {
    return _phi * _jariJari * _jariJari;
  }
}