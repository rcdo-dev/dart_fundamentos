/*
  * Map
  - Transforma / seleciona os elementos de uma coleção criando uma nova coleção do mesmo tamanho.
*/

listMap() {
  print('16.1.2) List map\n');

  List<String> frutas = ['Morango', 'Banana', 'Tomate'];

  /// Para cada elemento mapeado é retornado o valor da função anônima do map.
  List<String> frutasMapeadas =
      frutas.map((String e) => '$e é uma fruta').toList();
  print(frutasMapeadas);

  List<int> inteiros = [1, 5, 10];

  /// Para funções anônimas que serão usadas em um '.map()' é válido tipar
  /// o valor do parâmetro, isso evita erros.
  var incrementar = (int e) => ++e;
  final dobro = (int e) => e * 2;
  List<int> inteirosMapeado = inteiros.map(incrementar).map(dobro).toList();
  print(inteirosMapeado);

  /// Exemplo de lista com map para valores double, a saída são valores em moeda 'R$'.
  List<double> doubles = [2.75, 5.5, 7.25];
  final triplo = (e) => e * 3;
  final dynamic moeda = (e) =>
      '''R\$ ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}''';

  /// Closure
  dynamic porcentagem(desconto) => (valor) => desconto * valor;

  List<dynamic> doublesMapeado =
      doubles.map(triplo).map(porcentagem(0.9)).map(moeda).toList();
  print(doublesMapeado);
}

void main() {
  listMap();
}
