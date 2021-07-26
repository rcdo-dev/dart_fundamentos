/*
  * Conceito
  - Um Mixin permite implementar métodos e atributos necessários a um determinado contexto da classe.

  * Regras
  - Os mixins devem ser implementados antes das interfaces;
  - Eles podem ser implementados a partir de uma classe concreta ou abstrata;
  - Não podemos implementar uma herança de outra classe em um mixin e tão menos herdar um mixin diretamente;
  - Podemos implementar mais de um mixin, e não é obrigatório usar todos os métodos e
  atributos (salvo os métodos sem escopo, esses devem ser sobrescritos);
  - As classes que possuem métodos iguais serão sobrescritas em ordem até a classe herdeira.

  * ON
  - É obrigatório declarar sua classe como mixin;
  - Restringe o uso do mixin as classes que herdem ou implementam a classe declarada após
  a palavra ON.
  */

// CLASSE ABSTRATA

abstract class Cidadao {
  String nome;

  Cidadao(this.nome);

  void objetivosPessoais();

  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres.');
  }
}

// INTERFACES

abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica();
}

class Postagem {
  String? postagem;

  void escreverPostagem() {
    print('');
  }
}

/// MIXINS <--------------
///
/// O uso desse Mixin é restrito as
/// as classes que herdam a classe Cidadao.
mixin Elegivel on Cidadao {
  bool elegivel = false;

  /// Mesmo em um Mixin, um método sem
  /// escopo deve ser sobrescrito na classe
  /// que implementar o Mixin.
  void prestacaoContas();
}

/// Mixin criado a partir de uma classe abstrata.
abstract class Conta {
  double? _saldo;
  double salario = 33000;

  get saldo => this._saldo;
  set depositar(double valor) => _saldo = valor;

  /// Retorna se o saldo divido por 12 é menor
  /// que o salário. É uma simples declaração de renda,
  /// onde há um límite estipulado pelo salário.
  bool declaracaoRenda() => _saldo! / 12 < salario;
}

// CLASSE CONCRETA

/// 'with' -> palavra reservada do Dart para implementar um Mixin.
/// Podemos implementar mais de um Mixin com o uso da vírgula, e eles
/// devem ser implementados antes das interfaces.
class Candidato extends Cidadao
    with Elegivel, Conta
    implements Postagem, Presidenciavel {
  String? objetivo;

  Candidato(
    String nome, {
    this.ideologia,
    this.partido,
  }) : super(nome) {
    direitosDeveres();
  }

  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  @override
  String? postagem;

  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  @override
  String? ideologia;
  String? partido;

  @override
  void ideologiaPolitica() {
    print(
      '$nome é candidato com ideologia de $ideologia pelo partido $partido',
    );
  }

  // MIXINS
  @override

  /// O método prestacaoContas() pertence ao mixin Elegivel ... {}
  void prestacaoContas() {
    /// elegivel -> declarada no mixin Elegivel ... {}
    /// super.declaracaoRenda() -> declarada na abstract class Conta {}
    elegivel = super.declaracaoRenda();

    /// Verificação da variável 'elegivel'.
    if (elegivel) {
      print(
          'Candidato $nome passou na prestação de contas!\nAutorizado a concorrer nas eleições 2018!');
    } else {
      print(
          'Candidato $nome foi barrado na prestacao de contas!\nSaldo $saldo excede a renda declarada para Presidente');
    }
  }
}

// VOID MAIN

void main() {
  print('15.0) Mixin\n');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');

  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção no Brasil!'
    ..escreverPostagem()
    ..ideologiaPolitica()
    ..depositar = 396000
    ..prestacaoContas();
}
