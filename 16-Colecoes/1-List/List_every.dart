/*
  * Every
  - Faz o teste em todos os elementos com o operador lógico '&&' retornando true ou false.
*/

listEvery() {
  print('16.1.3) List Every\n');

  List<int> inteiros = [0, 1, 2, 3, 4, 5];

  /// Variável recebendo o resultado da verificação feita pela função '.every()'.
  bool resultado = inteiros.every((element) => element > 0);
  print(resultado);

  List<String> textos = List.from(['Fernando', 'Leila', 'Chloe']);

  /// Variável recebendo o resultado da verificação feita pela função '.every()'.
  resultado = textos.every((element) => element.contains('e'));
  print(resultado);
}

void main() {
  listEvery();
}
