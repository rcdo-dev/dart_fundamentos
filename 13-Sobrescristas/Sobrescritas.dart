/*
  * Métodos (override/sobreposição != overload/sobrecarda).
  - Override: Temos sobrescrita dos métodos da classe pai na classe herdeira.

  * Construtores
  - Super se refere ao construtor da nossa classe herdeira.? -> analisar melhor, acho que é classe mãe.
  
  * Classes Abstratas
  - Não podem ser instanciadas, elas servem como modelo.
  - Métodos sem escopo devem ser sobrescritos nas classes herdeiras.
*/

import 'Cao.dart';

void main() {
  print('13.0) Sobrescritas de Métodos, Atributos e Construtores\n');

  var cao = Cao.domestico('Chloe', 'Pug', 'Femea');

  /// Stack
  /// #0 objeto da classe Cao com construtor nomeado e parâmetros obrigatórios.
  /// #1 'Chloe' e 'Pug' são atributos da classe Cao, 'Femea' é uma atributo herdado da classe Mamíferos.
  /// #2 os atributos 'idade' e 'docil' são  herdados da classe Animal.
  /// #3 'desenvolvimento' e 'coluna' são atributos derivados respectivos as classes Mamíferos e Animal.
  print(
    'nome: ${cao.nome} raça: ${cao.raca} sexo: ${cao.sexo} idade: ${cao.idade} docil: ${cao.docil}',
  );
  print(
    'desenvolvimento:${cao.desenvolvimento} tipo: ${cao.coluna ? 'Vertebrado' : 'Invertebrado'}',
  );

  /// Chamada dos métodos sobrescritos.
  cao
    ..dormir()
    ..alimentar()
    ..reproduzir()
    ..acao();

  /// Print do método sobrescrito toString da classe Cao.
  print(cao);

  /// Ternário para o atributo derivado 'docil'.
  print('${cao.nome} ${cao.docil ? 'esta amigável' : 'não esta amigável'}');

  /// Desafio proposto!
  /// Criar uma classe Abelha quer herda de Artropodes
  /// com os construtores (insetos, aracnídeos e crustáceos)
  /// que herde de Animal no construtor invertebrados.
}
