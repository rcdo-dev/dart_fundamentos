///
/// * Map:
/// - Um Map transforma/seleciona os elementos de uma coleção
/// criando uma nova coleção do mesmo tamanho.
///

mapMap() {
  print('16.4.1) Map map\n');

  /// Lista de Maps <String, dynamic>
  /// Estrutra semelhante ao Json
  List<Map<String, dynamic>> carrinho = [
    {
      'nome': 'Borracha',
      'preco': 3.45,
    },
    {
      'nome': 'Caderno',
      'preco': 13.9,
    },
    {
      'nome': 'KitLapis',
      'preco': 41.22,
    },
    {
      'nome': 'Caneta',
      'preco': 7.5,
    }
  ];

  /// Closure para realizar desconto no preço dos produtos.
  dynamic porcentagem(desconto) =>
      (valor) => desconto * valor['preco']; // Closure.

  /// Função para transformar em moeda brasileira.
  final moeda =
      (e) => 'R\$ ${e.toDouble().toStringAsFixed(2).replaceFirst('.', ',')}';

  /// Lista com uso da Closure e da função moeda.
  List<String> precos1 = carrinho.map((porcentagem(0.9))).map(moeda).toList();

  /// Lista sem uso da Closure.
  List<String> precos2 = carrinho
      .map((e) => e.update('preco', (value) => value * 0.9))
      .map(moeda)
      .toList();

  /// Cálculo do preço médio.
  String precoMedio = (carrinho
              .map((e) => e['preco'])
              .reduce((value, element) => value + element) /
          carrinho.length)
      .toStringAsFixed(2);

  print(
    'Lista precos1: $precos1\nLista precos2: $precos2\nPreco Médio: $precoMedio',
  );

  /// Lista de Maps <String, Object>
  /// A diferencça aqui é que o valor do Map pode ser qualquer objeto,
  /// por isso temos uma lista de maps dentro da outra na chave 'alunos'.
  // ignore: unused_local_variable
  List<Map<String, Object>> escola = [
    {
      'nome': 'Turma T1',
      'alunos': [
        {
          'nome': 'Fernando',
          'nota': 8.1,
        },
        {
          'nome': 'Leila',
          'nota': 9.3,
        },
      ],
    },
    {
      'nome': 'Turma T2',
      'alunos': [
        {
          'nome': 'Chloe',
          'nota': 8.9,
        },
        {
          'nome': 'Bartolomeu',
          'nota': 7.3,
        },
      ],
    },
  ];

  /// O map acima não foi trabalhado porque o Dart na aula estava desatualizado
  /// comparado ao Dart de hoje.
}

void main() {
  mapMap();
}
