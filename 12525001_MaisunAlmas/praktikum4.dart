void loopingPertama() {
  print("LOOPING PERTAMA");
  for (var i = 2; i <= 20; i += 2) {
    print("$i - I love coding");
  }
}

void loopingKedua() {
  print("LOOPING KEDUA");
  for (var i = 20; i >= 2; i -= 2) {
    print("$i - I will become a mobile developer");
  }
}

void main() {
  loopingPertama();
  print("");
  loopingKedua();
}