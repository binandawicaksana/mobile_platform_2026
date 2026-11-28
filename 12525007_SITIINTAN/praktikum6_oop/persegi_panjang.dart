class PersegiPanjang {
  double _panjang = 0;
  double _lebar = 0;

  PersegiPanjang(double panjang, double lebar) {
    setPanjang(panjang);
    setLebar(lebar);
  }

  void setPanjang(double nilai) {
    _panjang = nilai < 0 ? nilai * -1 : nilai;
  }

  double getPanjang() => _panjang;

  void setLebar(double nilai) {
    _lebar = nilai < 0 ? nilai * -1 : nilai;
  }

  double getLebar() => _lebar;

  double hitungLuas() {
    return _panjang * _lebar;
  }
}