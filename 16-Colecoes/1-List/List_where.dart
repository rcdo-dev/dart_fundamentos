/*
  * Where:
  - Filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor.
*/

listWhere() {
  print('16.1.4) List Where\n');

  List<int> idades = [26, 12, 18, 31, 17, 23];

  /// Para setar os valores em uma lista é preciso usar ".toList()".
  print(idades.where((element) => element is int)); // retorno em Iterable

  /// Filtra os valores por tipo.
  print(idades.whereType<int>());

  List<int> adultos = idades.where((int element) => element > 17).toList();

  /// .singleWhere() -> função que terá um único retorno.
  /// orElse -> Se o filtro não for satisfeito é retornado o valor passado para esse parâmetro.
  var crianca = idades.singleWhere((element) => element < 12, orElse: () => 0);

  /// .lastWhere() -> retorna o último elemento de acordo com a condição.
  /// .startsWhith() -> somente usado com elementos do tipo String.
  int menor = idades.lastWhere(
    (element) => element.toString().startsWith('1'),
    orElse: () => 0,
  );

  print('adultos: $adultos menor: $menor criança: $crianca');
}

void main() {
  listWhere();
}
