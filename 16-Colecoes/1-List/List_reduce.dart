/*
  * Reduce
  - Compara os elementos da coleção retornando um único elemento resultante.
  - Ao interagir com os elementos o índice 0 da lista se torna o 1º parâmetro da função, e o índice 1 se torna o 2º parâmetro.
*/

listReduce() {
  print('16.1.5) List Reduce\n');

  List<int> numerosPares = List.generate(6, (index) => index * 2);
  print(numerosPares);

  /// A função '.reduce()' define que value é o índice 0 da lista e element
  /// corresponde ao índice 1.
  ///
  /// Neste contexto somamos o valor do índice anterior com valor do índice atual e
  /// o índice atual se torna o anterior.
  ///
  int resultado = numerosPares.reduce((value, element) {
    print('$value + $element = ${value + element}');
    return value + element;
  });

  print(resultado);

  /// Saída:
  /// [0, 2, 4, 6, 8, 10]
  /// 0 + 2 = 2
  /// 2 + 4 = 6
  /// 6 + 6 = 12
  /// 12 + 8 = 20
  /// 20 + 10 = 30
  /// 30

  /// No exemplo abaixo a função '.redude()' realiza comparações lógicas.
  List<bool> boleanas = [true, false, !true, !false];
  bool and = boleanas.reduce((value, element) => value && element);
  bool or = boleanas.reduce((value, element) => value || element);
  print('and: $and or: $or');

  /// Aqui definimos a menor e a maior idade, mais a média entre as idades da lista.
  List<int> idades = [36, 12, 18, 31, 17, 23];
  int maisNovo =
      idades.reduce((value, element) => (value < element) ? value : element);
  int maisVelho =
      idades.reduce((value, element) => (value > element) ? value : element);
  int media = idades.reduce((value, element) => value + element);
  print(
      'mais novo: $maisNovo mais velho: $maisVelho média: ${(media / idades.length).toStringAsFixed(1)}');
}

void main() {
  listReduce();
}
