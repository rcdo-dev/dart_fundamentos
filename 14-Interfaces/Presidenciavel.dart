/// Classes abstratas servem como modelo e não podem ser instanciadas.
/// Elas também servem como interfaces para outras classes.
/// Por ser uma classe abstrata o método sem escopo deve ser sobrescrito e
/// por ser uma interface os atributos devem ser sobrescritos também.
abstract class Presidenciavel {
  String? partido;
  String? ideologia;

  void ideologiaPolitica();
}
