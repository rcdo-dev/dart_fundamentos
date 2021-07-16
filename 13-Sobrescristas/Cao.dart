import 'Mamiferos.dart';

/// Uma classe comum também pode ser
/// chamada de classe classe concreta.
class Cao extends Mamiferos {
  String? nome;
  String? raca;

  Cao.domestico(this.nome, this.raca, String sexo,
      {String idade = 'indefinido', bool docil = true})
      : super.placentarios(sexo, idade, docil: docil);

  /// Retiramos a tipagem nesse construtor para mostrar que o Dart permite tal ação,
  /// porém é uma boa prática mantermos a tipagem, pois na instancia do objeto fica mais
  /// claro quais tipos atribuir.
  Cao.selvagem(this.nome, this.raca, sexo,
      {idade = 'indefinido', docil = false})
      : super.placentarios(sexo, idade, docil: docil);

  // Continuar, vídeo em 9:55.
}
