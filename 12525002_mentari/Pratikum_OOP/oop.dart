class BangunDatar {
  String _nama;
  double _hasilLuas;

  BangunDatar(this._nama) : _hasilLuas = 0;

  String get nama => _nama;
  double get hasilLuas => _hasilLuas;

  set hasilLuas(double value) {
    if (value < 0) {
      print("Nilai luas tidak boleh negatif!");
    } else {
      _hasilLuas = value;
    }
  }

  double hitungLuas() {
    return 0;
  }

  void tampilkan() {
    print("Bangun: $_nama");
    print("Luas  : ${_hasilLuas.toStringAsFixed(2)}");
    print("---------------------------");
  }
}


class PersegiPanjang extends BangunDatar {
  double _panjang;
  double _lebar;

  PersegiPanjang(this._panjang, this._lebar) : super("Persegi Panjang") {
    if (_panjang <= 0 || _lebar <= 0) {
      print("Peringatan: panjang & lebar harus > 0");
    }
  }

  double get panjang => _panjang;
  set panjang(double value) {
    if (value > 0) _panjang = value;
  }

  double get lebar => _lebar;
  set lebar(double value) {
    if (value > 0) _lebar = value;
  }

  @override
  double hitungLuas() {
    hasilLuas = _panjang * _lebar; // pakai setter dari induk
    return hasilLuas;
  }
}


class Segitiga extends BangunDatar {
  double _alas;
  double _tinggi;

  Segitiga(this._alas, this._tinggi) : super("Segitiga") {
    if (_alas <= 0 || _tinggi <= 0) {
      print("Peringatan: alas & tinggi harus > 0");
    }
  }

  double get alas => _alas;
  set alas(double value) {
    if (value > 0) _alas = value;
  }

  double get tinggi => _tinggi;
  set tinggi(double value) {
    if (value > 0) _tinggi = value;
  }

  @override
  double hitungLuas() {
    hasilLuas = 0.5 * _alas * _tinggi;
    return hasilLuas;
  }
}


class Lingkaran extends BangunDatar {
  double _r;
  static const double _phi = 3.14159;

  Lingkaran(this._r) : super("Lingkaran") {
    if (_r <= 0) {
      print("Peringatan: jari-jari harus > 0");
    }
  }

  double get r => _r;
  set r(double value) {
    if (value > 0) _r = value;
  }

  @override
  double hitungLuas() {
    hasilLuas = _phi * _r * _r;
    return hasilLuas;
  }
}


void main() {
  print("=== PRAKTIKUM OOP: LUAS BANGUN DATAR ===\n");

  var pp = PersegiPanjang(2, 5);
  pp.hitungLuas();
  pp.tampilkan();

  var sg = Segitiga(4, 3);
  sg.hitungLuas();
  sg.tampilkan();

  var lk = Lingkaran(7);
  lk.hitungLuas();
  lk.tampilkan();

  print("=== DEMO ENKAPSULASI ===");
  print("Nama bangun (getter) : ${pp.nama}");
  print("Luas awal (getter)   : ${pp.hasilLuas}");

  pp.lebar = 10;
  pp.hitungLuas();
  print("Setelah lebar = 10   : ${pp.hasilLuas}");

  pp.lebar = -3;
  print("Setelah lebar = -3   : ${pp.lebar} (tidak berubah)\n");

  print("=== DEMO INHERITANCE ===");
  List<BangunDatar> daftarBangun = [
    PersegiPanjang(3, 4),
    Segitiga(6, 2),
    Lingkaran(5),
  ];

  for (var b in daftarBangun) {
    b.hitungLuas();
    b.tampilkan();
  }
}