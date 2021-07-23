import 'Animal.dart';

/// Uma classe abstrata é um modelo de classe que podemos herdar
/// os atributos, métodos e construtores.
///
/// Esse tipo de classe não pode ser instanciada.
abstract class Mamiferos extends Animal {
  String? sexo;

  /// Podemos não passar os atributos como parâmetros obrigatórios
  /// O seu valor pode vir de uma tratativa, lodo esse atributo é
  /// um atributo derivado(que possui seu valor derivado de uma tratativa).
  late String desenvolvimento;

  Mamiferos.placentarios(this.sexo, idade, {docil})
      : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Placentários'; // valor para o atributo derivado
  }

  Mamiferos.marsupiais(this.sexo, idade, {docil})
      : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento =
        'Placentários + Bolsa externa'; // valor para o atributo derivado
  }

  Mamiferos.monotremados(this.sexo, idade, {docil})
      : super.vertebrado(idade, docil: docil) {
    this.desenvolvimento = 'Ovo'; // valor para o atributo derivado
  }

  void alimentar() {
    print('Se alimenta');
    print('Como um');
  }

  /// Métodos sem escopo em classes abstratas devem
  /// ser sobrescritos em classes herdeiras.
  void reproduzir();
}
