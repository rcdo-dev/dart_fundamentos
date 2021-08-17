/*
  * Fold
  - Compara os elementos da coleção retornando um único elemento resultante.
  - O valor inicial se torna o 1º parâmetro da função e o índice 0 da lista se torna o 2º parâmetro.
*/

listFold() {
  print('16.1.6) List Fold\n');

  List<int> numerosPares = List.generate(6, (index) => index * 2);
  print(numerosPares);

  int valorInicial = 10;

  /// Na função '.fold()' setamos o valor inicial que será o valor do
  /// parâmetro 'previousValue' e 'element' será o 1º índice da lista.
  int resultado = numerosPares.fold(valorInicial, (previousValue, element) {
    print('$previousValue + $element = ${previousValue + element}');
    return previousValue + element;
  });
  print('$resultado\n');

  /// Saída
  /// [0, 2, 4, 6, 8, 10]
  /// 10 + 0 = 10
  /// 10 + 2 = 12
  /// 12 + 4 = 16
  /// 16 + 6 = 22
  /// 22 + 8 = 30
  /// 30 + 10 = 40
  /// 40

  /// Exemplo da funação '.fold()' subtraindo os valores.
  valorInicial = 30;
  resultado = numerosPares.fold(valorInicial, (previousValue, element) {
    print('$previousValue - $element = ${previousValue - element}');
    return previousValue - element;
  });
  print(resultado);
}

void main() {
  listFold();
}
