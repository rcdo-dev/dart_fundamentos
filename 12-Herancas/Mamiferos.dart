import 'Animal.dart';

/// Utilizando a palavra-chave 'extends' nós herdamos
/// os atributos e métodos da classe Animal.
class Mamimeferos extends Animal {
  String? sexo;

  /// Neste construtor temos que referenciar os atributos da classe super
  /// e assim termos acesso a eles, então no construtor da classe Mamiferos
  /// colocamos 'idade' e 'docil' como referencia, e com a palavra-chave super
  /// ligamos as referencias aos atributos da superclass.
  ///
  /// É válido lembrar que os atributos devem ser referenciados de acordo com a
  /// ordem em que foram criados.
  Mamimeferos(this.sexo, idade, docil) : super(idade, docil: docil);

  void alimentar() {
    print('Se alimenta como um mamifero');
  }
}
