import 'dart:math';

class Lingkaran {
  double jariJari;

  Lingkaran(this.jariJari);

  double hitungLuas() {
    return pi * jariJari * jariJari;
  }
}