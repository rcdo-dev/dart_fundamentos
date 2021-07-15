/*
  * Regras
  - Uma classe pode ter somente uma herança.

  *Construtores
  - Devem obedecer a ordem dos parâmetros.
  - Parâmetros default devem ser nomeados ou posicionais.
  - O tratamento e tipagem de parâmetros devem ser feitos na classe herdeira.
*/

import 'Cao.dart';

void main() {
  print('12.0) Heranças de atributos métodos e construtores\n');

  var cao = Cao('Chloe', 'Pug', 'Femea');
  print(
    'nome: ${cao.nome} raça: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}',
  );

  /// Os métodos são herdados automaticamente,
  /// note que chamamos os métodos de todas as classes.
  cao
    ..dormir()
    ..alimentar()
    ..acao();

  print(
      '${cao.nome} ${cao.docil != null && cao.docil == true ? 'está amigável' : 'Não está amigável'}');
}
