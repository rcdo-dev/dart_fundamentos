///
/// * Conceitos:
/// - Every faz o teste em 'todos' elementos com o operador lógico && retornando true ou false.
///

everyMap() {
  print('16.4.2) Map Every\n');

  List<Map<String, dynamic>> pessoas = [
    {
      'nome': 'Lucio',
      'idade': 60,
    },
    {
      'nome': 'Leila',
      'idade': 31,
    },
    {
      'nome': 'Leandro',
      'idade': 17,
    },
  ];

  /// Verifica se a lista contém a chave 'nome'.
  print(pessoas.every((element) => element.containsKey('nome')));

  /// Verifica se os elementos na chave 'idade' são iguais ou maiores que 17.
  print(pessoas.every((element) => element['idade'] >= 17));

  /// Verifica se os elementos na chave 'nome' começam com a letra 'L'.
  bool maiores = pessoas.every((element) => element['nome'].startsWith('L'));
  print(maiores);
}

void main() {
  everyMap();
}
