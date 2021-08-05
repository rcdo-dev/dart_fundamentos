/*
  * Expand:
  - Cria uma nova lista expandindo ou concatenando os elementos.
*/

listExpand() {
  print('16.1.1) List Expand\n');

  var lista = [
    [1, 2],
    [3, 4],
  ];

  /// A função 'expand()' recebe uma função anônima e
  /// essa interage com cada elemento da lista expandindo
  /// os valores em uma nova lista.
  List<dynamic> listaFlat = lista.expand((element) => element).toList();

  /// Com a mesma função podemos duplicar os valores da lista.
  List<dynamic> listaDuplicada = listaFlat.expand((e) => [e, e]).toList();
  print('listaFlat: $listaFlat \nlistaDuplicada: $listaDuplicada');

  List<num> numeros = [1, 2.5, 5, 7.25, 10];
  List<int> inteiros = [1, 5, 10];
  List<double> doubles = [2.5, 7.25];

  List<dynamic> listaDinamica = [];
  print('$listaDinamica');

  /// Concatenação com o operador '+'.
  print(listaDinamica = [1, 5, 10] + [2, 7]);

  /// Dentro da lista vazia é adicionado todos os inteiros e todos os doubles.i
  print(listaDinamica = []..add(inteiros)..add(doubles));

  /// Operador spread '...' (espalhar).
  print(listaDinamica = [0, ...inteiros, 15]);

  /// Condição if para adicionar valores a lista.
  print(
    listaDinamica = [
      ...[],
      ...inteiros,
      if (doubles is List<double>) ...doubles
    ],
  );

  /// Condição for para adicionar valores a lista.
  print(
    listaDinamica = [
      ...[],
      for (var numero in numeros) numero,
    ],
  );
}

void main() {
  listExpand();
}
