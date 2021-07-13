/// -> Funções com parâmetros posicionados e default
///
/// -> Funções com parâmetros nomeados e default
/// 
/// -> Funções como parâmetros para outras funções
funcaoParametros() {
  print('06.3.1) Funções com parâmetros posicionados e default\n');

  /// Parâmetros posicionais que não podemos mudar sua posição, a vantagem deste tipo e
  /// parâmetro é a definição de um valor padrão caso a função seja chamada sem a passagem
  /// de parâmetros.
  ///
  /// A definição de parâmetros posicionais começa do último parâmetro para o primeiro, ou seja,
  /// não é possível definir o parâmetro "String nome" como posicionado, para isso "double altura"
  /// e "int peso" devem estar dentro do intervalo dos colchetes como parâmentros posicionados.
  ///
  /// Por conta do null-safety é preciso inserir uma  interrogação "?" após o tipo do parâmetro para
  /// dizer que aquele parâmetro pode receber um valor nulo.
  void exibirDados1(String nome, [int? peso = 65, double? altura]) {
    print('Nome: $nome Peso: $peso Altura: $altura');
  }

  exibirDados1('Fernado', 70, 1.83);

  //-----------------------------------------------------------------------------------------------------------

  print('\n06.3.1) Funções com parâmetros nomeados e default\n');

  /// Parâmetros nomeados seguem a mesma regra de definição dos parâmetros posicionais,
  /// ou seja, são definidos do último para o primeiro.
  ///
  /// A vantagem desse tipo de parâmetro é que ele pode ser declarado fora de ordem e
  /// também podem ter um valor default informado.
  ///
  /// O parâmetro "double altura" neste caso foi tratado na funação print(), onde se ele
  /// for nulo é impresso a sáida "Não informada".
  exibirDados2(String nome, {int peso = 65, double? altura}) {
    print('Nome: $nome Peso: $peso Altura: ${altura ?? 'Não informada!'}');
  }

  exibirDados2('Fernado');
  exibirDados2('Fernado', altura: 1.83);

  //-----------------------------------------------------------------------------------------------------------
  print('\n06.3.2) Funções como parâmetros para outras funções\n');

  /// Função falar que executa a função print.
  void falar() {
    print('Essa é uma função passada como parâmetro nomeado');
  }

  /// Podemos passar uma função como parâmetro para outra função,
  /// assim essa função que virá como parâmetro será executada no corpo
  /// da função que recebe o parâmetro.
  /// 
  /// Por conta do null-safe é necessário colocar "required" no parâmetro nomeado,
  /// pois a função não pode ser executada sem que esse parâmetro seja passado, ou seja,
  /// esse parâmetro não é anulável.
  void saudacao(String nome, {required Function funcaoFalar}) {
    print('Olá, eu sou $nome');
    funcaoFalar();
  }

  /// O parâmetro "funcaoFalar" recebe a função "falar" como parâmetro, ou seja, uma função para outra função.
  saudacao('Fernando', funcaoFalar: falar);

  /// Aqui o parâmetro "funcaoFalar" recebe uma função anônima que faz uso de uma arrow function para um retorno implícito.
  saudacao('Fernando',
      funcaoFalar: () =>
          print('Essa é uma funcao anonima passada como parametro nomeado'));
}

void main() {
  funcaoParametros();
}
