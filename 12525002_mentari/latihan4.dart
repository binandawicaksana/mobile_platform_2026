void main() {
    print('LOOPING PERTAMA');
    loopingPertama();

    print('LOOPING KEDUA');
    loopingKedua();

}

void loopingPertama() {
  for (var deret = 2; deret <= 20; deret += 2) {
    print(deret.toString() + ' - I love coding');
  }
}

void loopingKedua() {
  var deret = 20;
  while (deret >= 2) {
    print(deret.toString() + ' - I will become a mobile developer');
    deret -= 2; 
  }
}