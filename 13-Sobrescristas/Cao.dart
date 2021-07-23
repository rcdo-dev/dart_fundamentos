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

  /// Sobrescrita do método da classe herdada (Super).
  @override
  void dormir() {
    print('Dorme como um cão');
  }

  /// A palavra-chave override é opcional, se o método sobrescrito tiver o mesmo
  /// nome do método super, o Dart identifica e sobrescreve.
  // @override
  void alimentar() {
    super.alimentar(); // implementa o escopo do método herdado (super).
    print('cão!');
  }

  /// Métodos sem escopo em classes abstratas devem ser sobrescritos.
  @override
  void reproduzir() {
    print('Reproduz como um cão!');
  }

  /// Método nativo da classe.
  void acao() {
    print('Late como um cão');
  }

  /// Toda classe estende de Object, ao usar a função print a função toString retona (Instance of 'Object').
  /// Então podemos sobrescrever esse método.
  String toString() {
    return "Instance of '${this.runtimeType}' nome: $nome raça: $raca sexo: $sexo";
  }
}
