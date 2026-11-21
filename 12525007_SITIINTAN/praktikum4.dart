void LoopingPertama() {
for(var angka = 2; angka <= 20; angka += 2) {
  print('$angka - I Love Coding');
  }
}

void LoopingKedua() {
  var angka = 20;
  while(angka >= 2) {
    print('$angka - I Will Become a Mobile Developer');
    angka -= 2;
  }
}

void main() {
  print("LOOPING PERTAMA");
  LoopingPertama();

  print("LOOPING KEDUA");
  LoopingKedua();
}