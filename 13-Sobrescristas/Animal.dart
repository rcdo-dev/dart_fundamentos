/// Uma classe abstrata é um modelo de classe que podemos herdar
/// os atributos, métodos e construtores.
///
/// Esse tipo de classe não pode ser instanciada.
abstract class Animal {
  String? idade;
  bool? docil;

  /// Podemos não passar os atributos como parâmetros obrigatórios
  /// O seu valor pode vir de uma tratativa, lodo esse atributo é
  /// um atributo derivado(que possui seu valor derivado de uma tratativa).
  bool? coluna;

  Animal.vertebrado(this.idade, {this.docil}) {
    this.coluna = true; // valor para o atributo derivado
  }

  Animal.invertebrado(this.idade, {this.docil}) {
    this.coluna = false;
  }

  void dormir() {
    print('Dorme como um animal');
  }
}
