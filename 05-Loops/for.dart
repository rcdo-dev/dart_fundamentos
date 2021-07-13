void main() {
  print('05.1) Loops For\n');

  // Com o loop For, podemos controlar o índice manulmente.
  for (var i = 1; i <= 3; i++) {
    print('contagem $i');
  }

  print('');

  // Podemos decrementar a variável de controle
  for (int i = 15; i >= 0; i -= 5) {
    print('regressiva: $i');
  }

  print('');

  // Também podemos usar o For com uma cadeia de caracteres
  String nome = 'Leila';
  int numero = 0;

  // Condição normal
  for (int i = numero; i < nome.length; i++) {
    if (i % 2 == 0) {
      print('$i é par');
    } else {
      print('$i é impar');
    }
  }

  print('');

  // Condição ternária
  for (int i = numero; i < nome.length; i++) {
    print('$i ${(i % 2 == 0) ? 'é par' : 'é impar'}');
  }

  print('');

  // for com a função substrig, nesta função o índice inicial é inclusivo e o final é exclusivo.
  for (var i = 0; i < nome.length; i++) {
    print('${(nome.substring(i, i + 1))}');
  }

  print('');

  // Exercício: Identificar os múltiplos de 2 e 3 no intervalo de 5 a 12!
  for (int i = 5; i <= 12; i++) {
    if (i == 0) {
      print('$i é multiplo de todos os números');
    } else if (i % 2 == 0 && i % 3 == 0) {
      print('$i é multiplo de 2 e 3');
    } else if (i % 3 == 0) {
      print('$i é multiplo de 3');
    } else if (i % 2 == 0) {
      print('$i é multiplo de 2');
    } else {
      print(i);
    }
  }

  print('');

  // Percorrendo um Array
  var frutas = ['tomate', 'manga', 'pera', 'maca'];
  for (int i = 0; i < frutas.length; i++) {
    print('for: $i ${frutas[i]}');
  }

  print('');

  // For in - Variável de controle automatizado e crescente.
  for (var fruta in frutas) {
    print('for in: $fruta');
  }
  
}
