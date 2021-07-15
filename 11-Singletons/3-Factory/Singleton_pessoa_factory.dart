class PessoaFactory {
  static final PessoaFactory instancia = PessoaFactory._construtorNomeado(
    'indefinido',
  );
  String? nome;

  /// O construtor factory é o primeiro construtor
  /// a ser executado quando instanciamos a classe.
  ///
  /// O construtor factory é um construtor default.
  /// E por ser default ele sempre retornará a instancia do singleton, ou seja,
  /// o objeto instanciado já terá o singleton por padrão. É por isso que ele
  /// mantém a instancia original.
  factory PessoaFactory() => instancia;

  PessoaFactory._construtorNomeado(this.nome) {
    // Podemos definir algumas configurações iniciais aqui.
  }
}
