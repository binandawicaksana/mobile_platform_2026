import 'bangun_datar.dart';

class PersegiPanjang extends BangunDatar {
  late double _panjang;
  late double _lebar;

  // Constructor
  PersegiPanjang(double panjang, double lebar) {
    setPanjang(panjang);
    setLebar(lebar);
  }

  void setPanjang(double value) {
    if (value < 0) value *= -1;
    _panjang = value;
  }

  double getPanjang() => _panjang;

  void setLebar(double value) {
    if (value < 0) value *= -1;
    _lebar = value;
  }

  double getLebar() => _lebar;

  @override
  double hitungLuas() {
    return _panjang * _lebar;
  }
}