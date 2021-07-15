import 'dart:math';

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

class PessoaInstancia {
  /// Sem o modificador final, podemos configurar o construtor privado nomeado
  /// dentro do construtor factory e assim passar parâmetros
  /// ao instanciar essa classe.
  static PessoaInstancia? _instancia; // retirar underscore para usar o singleton.
  String? nome;
  final int _identidade;

  /// Podemos passar parâmetros para o construtor factory e tratá-los se necessário,
  /// após retornamos o singleton com o construtor nomeado passando os mesmos parâmetros
  /// recebidos nos construtor factory.
  factory PessoaInstancia({String nome = 'indefinido', int? identidade}) {
    identidade =
        (identidade == null) ? Random().nextInt(99999999 + 1) : identidade;
    return _instancia ??= PessoaInstancia._construtorNomeado(nome, identidade);
  }

  PessoaInstancia._construtorNomeado(this.nome, this._identidade) {
    // Podemos definir algumas configurações iniciais aqui.
  }

  get identidade => _identidade;
}
