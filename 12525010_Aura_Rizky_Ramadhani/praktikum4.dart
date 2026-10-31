void main() {
  print('Looping Kesatu');
  for (var deret = 2; deret <= 20; deret++) {
    if (deret % 2 == 0) {
      print(deret.toString() + '- I love Aten');
    }
  }
  print('Looping Kedua');
  for (var deret = 20; deret >= 2; deret--) {
    if (deret % 2 == 0) {
      print(deret.toString() + '- I love Aten');
    }
  }
}
