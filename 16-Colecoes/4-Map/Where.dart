///
/// * Conceito:
///   - where filtra os elementos da coleção criando uma nova do mesmo tamanho ou menor!
///   - Esse filtro é realizado dada um determinada condição.
///

whereMap() {
  print('16.4.3) Map Where\n');

  List<Map<dynamic, dynamic>> produtos = [
    {
      'nome': 'Notebook',
      'preço': 2499,
      'fragil': true,
    },
    {
      'nome': 'iPad',
      'preço': 4199,
      'fragil': true,
    },
    {
      'nome': 'iPhone',
      'preço': 2299,
      'fragil': true,
    },
    {
      'nome': 'Magic Mouse',
      'preço': 299,
      'fragil': false,
    },
  ];

  /// Descrever a função fora da notação da maior legibilidade e
  /// manutenibilidade ao código.
  var fragil = (e) => e['fragil'] == true;
  final nome = (e) => e['nome'];

  /// Dica: Enquanto estamos filtrando a nossa lista, é melhor tipar com o 'var',
  /// isso nos da liberdade em relação a um tipo não ser subtipo de outro, ao final
  /// nós colocamos tipagem correta para a lista obtida.
  List<dynamic> resultado = produtos.where(fragil).map(nome).toList();
  print('Produtos frágeis: $resultado\n');

  List<Map<String, dynamic>> pessoas = [
    {
      'nome': 'Fernando',
      'idade': 36,
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

  List<Map<String, dynamic>> maiores =
      pessoas.where((element) => element['idade'] >= 21).toList();

  /// Caso a condição não seja satisfeita, podemo usar o parâmetro orElse para retornar um map vazio.
  /// Use ".startsWith('L')" para ter valor no resultado.
  Map<String, dynamic> comecaComL = pessoas.firstWhere(
    (element) => element['nome'].startsWith('R'),
    orElse: () => {},
  );

  Map<String, dynamic> menores =
      pessoas.singleWhere((element) => element['idade'] < 18);

  /// Podemos declarar funções em variáveis usando final ou var.
  final idades = (e) => e['idade'];
  final soma = (previous, current) => previous + current;

  /// Aqui estamos retornando a media de idades da lista de pessoas.
  var media = (pessoas.map(idades).reduce(soma)) / pessoas.length;

  /// Também podemos realizar uma tratamento com o map vazio no print.
  print(
    'Menores: $menores\nMaiores: $maiores\nMedia Idades: $media\nNomes com R: ${comecaComL.isEmpty ? 'Nenhum' : comecaComL}',
  );
}

void main() {
  whereMap();
}
