///
/// * Conceito
/// - Map é uma coleção dinâmica e customizavel de chaves e valores.
/// - As chaves são únicas, e os valores não se repetem.
///

linkedHashMap() {
  print('16.4.0) LinkedHashMap == Map\n');

  List<String> nomes = ['Fernando', 'Leila'];

  /// .asMap(): Converte uma lista em Map.
  /// A conversão tornará os índices da lista como chaves do tipo int,
  /// e o valores serão cada valor da lista.
  /// Saída:  {0: Fernando, 1: Leila}
  Map<int, String> nomesMap = nomes.asMap();
  print('$nomesMap\n');

  /// print do Map com loop forEach.
  nomesMap.forEach((key, value) => print('$key: $value'));

  Map<String?, dynamic> frutas = Map();

  /// Dois elementos com a mesma chave terão
  /// seus valores atualizados prevalecendo o último valor.
  frutas['banana'] = 'amarela';
  frutas['banana'] = 'verde';
  frutas['goiaba'] = 'amarela';
  frutas['macã'] = 'vermelha';
  print('\n$frutas\n');

  /// Podemos verificar se o Map tem uma determinada chave ou valor.
  print(frutas.containsKey('banana'));
  print(frutas.containsValue('azul'));

  /// Podemos printar o valor de um determinada chave.
  print(frutas['banana']);

  /// A função .clear() limpa todo o conteúdo do Map.
  frutas.clear();

  /// O Map pode receber uma chave e um valor nulo desde que isso
  /// seja permitido através do Null Safety, como o valor é dinâmico
  /// ele aceitará o valor nulo por padrão.
  frutas[null] = null;
  print('$frutas\n');

  ///
  /// Funções específicas para Map.
  ///

  Map<String, dynamic> usuario = Map.from(
    {'nome': 'Fernando', 'idade': 36, 'peso': 65.5},
  );

  /// Atualiza o valor de uma determinada chave.
  usuario.update('nome', (value) => '$value Martins');

  /// Para termos um valor atualizado devemos incrementá-lo antes.
  usuario.update('idade', (value) => ++value);

  /// Remove o valor passado conforme a operação lógica.
  usuario.removeWhere((key, value) => key == 'peso' && value == 65.5);

  /// ifAbsent: recebe uma função anônima para retorno de um valor
  /// caso o parâmetro a ser atualizado não exista.
  usuario.update('peso', (value) => 70, ifAbsent: () => 'indefino');

  /// Insere uma chave e um valor através de um função caso estes não existam.
  usuario.putIfAbsent('altura', () => 1.83);

  /// Insere uma lista de Map no Map atual.
  usuario.addAll({'sexo': 'masculino', 'casado': true});
  print('$usuario\n');

  /// Podemos ter acesso a todas as chaves a todos os valores de um Map.
  print('chaves: ${usuario.keys}\nvalores: ${usuario.values}\n');

  ///
  /// Manipulação do Map com Loops
  ///

  Map<int, dynamic> numeros = {0: 'zero', 1: 'um', 2: 'dois'};
  print('$numeros');

  /// A classe MapEntry permite manipular a chave ou valor de um Map.
  print(numeros.map((key, value) => MapEntry(key, '${value.toUpperCase()}')));

  print('');

  /// Loop for in

  /// for in nas chaves do Map.
  for (var chave in numeros.keys) {
    print('for in -> chave: $chave');
  }

  print('');

  /// for in nos valores do Map.
  for (var valor in numeros.values) {
    print('for in -> valor: $valor');
  }

  print('');

  /// for in nas chaves e nos valores.
  for (var key in numeros.keys) {
    final valor = numeros[key];
    print('for in: chave $key valor: ${valor.toUpperCase()}');
  }
}

void main() {
  linkedHashMap();
}
