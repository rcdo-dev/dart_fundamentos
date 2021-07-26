/*
  * Conceito
  - Interfaces são modelos para implementar métodos e atributos em nossas classes.

  * Regras
  - Ao implementar uma interface devemos utilizar todos os métodos e atributos da interface implementada.
  - No Dart não tem sintaxe para interfaces, pode ser uma classe concreta ou abstrata.
  - Podemos implementar mais de uma interface e devemos sobrescrever todos os métodos e atributos.
*/

import 'Candidato.dart';

void main() {
  print('14.0) Interfaces\n');

  var bolsonaro = Candidato('Bolsonaro', ideologia: 'Direita', partido: 'PSL');

  /// Stack
  /// #0 objeto 'bolsonaro' instanciado da classe Candidato com o parâmetro nome, os
  /// parâmetros 'ideologia' e 'partido' são nomeados opcionais;
  /// #1 com o operador em cascata o objeto atribui a String 'objetivo' um valor textual;
  /// #2 na sequencia é invocado o método sobrescrito originário da classe 'Cidadao';
  /// #3 atribuição de valor textual a variável sobrescrita 'postagem', essa variável veio da
  /// classe concreta 'Postagem', que foi implementada como uma interface;
  /// #4 após essa implementação podemos chamar o método sobrescrito 'escreverPostagem()';
  /// #5 o método 'ideologiaPolitica()' é invocado a partir de sua sobrescrita da interface 'Presidenciavel'.
  bolsonaro
    ..objetivo = 'Ganhar eleição'
    ..objetivosPessoais()
    ..postagem = 'Vou acabar com a corrupção no Brasil!'
    ..escreverPostagem()
    ..ideologiaPolitica();
}
