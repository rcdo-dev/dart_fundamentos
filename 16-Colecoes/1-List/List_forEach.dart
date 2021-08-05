/*
  * Conceito
  - List é uma coleção dinâmica e ordenada de elementos entre colchetes [].
  - forEach: Aplica a função anônima a cada elemento da nossa coleção.
  - Todo array é um List<?>
*/

import 'dart:math';

listForEach() {
  print('16.1.0) List ForEach\n');

  var array = [0, 2.5, 5, 7.25, 10];

  /// Um forEach tem um for in dentro dele.
  /// Resumidamente, passamos um função anônima que irá interagir
  /// com todos os elementos do array.
  array.forEach(
    (element) {
      print('forEach: $element');
    },
  );

  /// Exemplos de coleções List.

  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];
  List<bool> boleanas = [true, false, !true, !false];
  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  print('\nimplementação: ${frutas.runtimeType}');

  print(
      "\nboleanas[3]: ${(boleanas[inteiros.length]) ? 'verdadeiro' : 'falso'}\n");

  frutas.insert(0, 'Abacaxi');
  frutas.add('Laranja');
  frutas.forEach((e) => print('forEach: $e'));
  print(frutas);
  frutas.removeLast();
  frutas.removeWhere((element) => element == 'Banana');
  print(frutas);
  print(frutas.elementAt(2));
  print(frutas.contains('abacaxi')); // CamelCase

  /// Construtor nomeado
  List<num> numeros = List.from(inteiros)
    ..addAll(doubles)
    ..shuffle()
    ..sort();
  print(numeros);

  List<dynamic> lista = [2];
  lista = numeros.take(3).skip(1).take(2).toList();
  print('lista: $lista');

  /// Geradores de lista
  List<String> listaPreenchida = List.filled(2, 'elemento');
  List<String> listaGerada = List.generate(2, (index) => 'Nome $index');
  List<double> listaPrecos =
      List.generate(5, (index) => (index + 1) * Random().nextDouble());
  print(
      'lista preenchida: $listaPreenchida\nLista Gerada: $listaGerada\n Lista preços: $listaPrecos');

  listaPrecos.forEach((element) => print('forEach: $element'));
}

void main() {
  listForEach();
}
