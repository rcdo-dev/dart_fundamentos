///
/// * Conceito:
///   - A função .reduce() compara os elementos da coleção retornando 1 único elemento resultante!
///   - Ao interagir com os elementos o índice 0 se torna o anterior e o índice 1 se torna o atual.
///

reduceMap() {
  print('16.4.4) Map Reduce\n');

  List<Map<String, dynamic>> alunos = [
    {
      'nome': 'Fernando',
      'nota': 7.3,
      'bolsista': false,
    },
    {
      'nome': 'Leila',
      'nota': 9.2,
      'bolsista': true,
    },
    {
      'nome': 'Chloe',
      'nota': 9.8,
      'bolsista': true,
    },
    {
      'nome': 'Bartolomeu',
      'nota': 8.7,
      'bolsista': false,
    },
  ];

  final dynamic bolsistas = (e) => e['bolsista'] as bool;
  final dynamic nomes = (e) => e['nome'];
  final dynamic notas = (e) => e['nota'];
  final dynamic soma = (previous, current) => previous + current;

  List<dynamic> bolsistasNomes = alunos.where(bolsistas).map(nomes).toList();
  List<Map<String, dynamic>> medias = alunos.where(bolsistas).toList();

  var bolsistasMedia = medias.map(notas).reduce(soma) / medias.length;

  /// Neste caso, reduce faz um comparativo entre o valor anterior e o atual,
  /// ele retornará verdadeiro se todos os valores forem verdadeiros e se
  /// houver um valor falso então o retorno será falso.
  bool todosBolsistas = alunos
      .map(
        bolsistas,
      )
      .reduce(
        (previous, current) => previous && current,
      );

  /// Aqui o retorno será verdadeiro se pelo menos um valor comparado for verdadeiro.
  bool algumBolsista = alunos
      .map(
        bolsistas,
      )
      .reduce(
        (previous, current) => previous || current,
      );

  print('Todos são bolsistas? ${todosBolsistas ? 'Sim' : 'Não'}');
  print('Algum bolsista? ${algumBolsista ? 'Sim' : 'Não'}');
  print('Alunos Bolsistas: $bolsistasNomes Médias Notas: $bolsistasMedia');

  print('\nNovo Exemplo abaixo\n');

  /// Novo exemplo.
  List<dynamic> funcionarios = [
    {
      'nome': 'Leila',
      'genero': 'M',
      'país': 'Brasil',
      'salario': 1599.70,
    },
    {
      'nome': 'Fernando',
      'genero': 'H',
      'país': 'Argentina',
      'salario': 1234.36,
    },
    {
      'nome': 'Chloe',
      'genero': 'M',
      'país': 'Brasil',
      'salario': 1738.30,
    },
  ];

  final dynamic brasileiros = (e) => e['país'] == 'Brasil';
  final dynamic mulheres = (e) => e['genero'] == 'M';
  final dynamic menorSalario = (previous, current) =>
      previous['salario'] < current['salario']
          ? previous['salario']
          : current['salario'];
  final dynamic funcionarioMenorSalario = (previous, current) =>
      previous['salario'] < current['salario'] ? previous : current;

  List<dynamic> selecionados =
      funcionarios.where(brasileiros).where(mulheres).toList();

  print(selecionados);
  print(selecionados.reduce(menorSalario));

  Map<String, dynamic> funcionario =
      selecionados.reduce(funcionarioMenorSalario);
  print(
    'Funcionario: ${funcionario['nome']} salario: ${funcionario['salario']}',
  );
}

void main() {
  reduceMap();
}
