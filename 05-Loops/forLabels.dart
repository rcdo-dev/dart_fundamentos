void main() {
  print('05.2) For Labels\n'); // For com rótulos ou labels.

  for (var i = 0; i < 2; i++) {
    // i = 0
    for (var j = i; j < 2; j++) {
      // j = 0
      for (var k = j; k < 2; k++) {
        // K = 0
        print('i: $i j: $j: k:$k');
      }
    }
  }

  print('\nFor com break e rótulos(labels)\n');

  loopExterno:
  for (var i = 0; i < 3; i++) {
    // i = 1
    print('Loop Externo: i: $i');

    loopInterno:
    for (var j = 0; j <= 3; j++) {
      // j = 0
      print('Loop Interno: i: $i j: $j');

      if (j > 2) break;
      if (i == 1) break loopInterno;
      if (i == 2) break loopExterno;

      print('Loop Completo');
    }
  }

  print('\nFor com continue e rótulos(labels)\n');

  loopExterno:
  for (int i = 1; i <= 2; i++) {
    // i = 3
    print('Loop Externo: i: $i');

    loopInterno:
    for (int j = 1; j <= 3; j++) {
      // j= 2
      print('Loop Interno: i: $i j: $j');
      if (i == 1 && j == 1) continue loopInterno;
      if (i == 2 && j == 2) continue loopExterno;
      print('Loop Completo');
    }
  }
}
