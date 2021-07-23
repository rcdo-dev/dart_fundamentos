import 'Cidadao.dart';
import 'Postagem.dart';
import 'Presidenciavel.dart';

/// Usamos a palavra-chave 'implements' para implementar uma interface e
/// com isso precisamos sobrescrever seus atributos e métodos.
///
/// Podemos implementar mais de uma interface, basta adicionar o nome da
/// classe após a vírgula.
class Candidato extends Cidadao implements Postagem, Presidenciavel {
  String? objetivo;

  /// Esse construtor faz referencia a superclass.
  Candidato(
    String nome, {

    /// Parâmetros oriundos da interface 'Presidenciavel'.
    this.ideologia,
    this.partido,
  }) : super(nome) {
    direitosDeveres(); // método invocado da herança da classe 'Cidadao'.
  }

  /// Método sobrescrito da classe Cidadao.
  /// A variável 'nome' abaixo é oriunda do construtor.
  @override
  void objetivosPessoais() {
    print('$nome tem o objetivo de $objetivo');
  }

  /// INTERFACE class Postagem {}
  @override
  String? postagem;

  /// É válido SEMPRE utilizar a palavra-chave '@override' para indicar a
  /// sobrescrita, isso facilita a legibilidade do código.
  @override
  void escreverPostagem() {
    print('Postagem de $nome no facebook: $postagem');
  }

  /// INTERFACE class Presidenciavel {}
  @override // Com um único @override sobrescrevemos os dois atributos.
  String? ideologia;
  String? partido;

  @override
  void ideologiaPolitica() {
    print(
      '$nome é candidato com ideologia de $ideologia pelo partido $partido',
    );
  }
}
