/*
  * Singleton
  - É um padrão de projeto para que exista uma instancia da classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  
  * Getter
  - A _instancia privada é acessada através do get.
*/

import 'Singleton_pessoa_getter.dart';

void main() {
  print('11.2) Singleton Getter\n');

  /// A instancia acessada aqui é o getter definido na classe PessoaGetter.
  print(PessoaGetter.instancia.nome);

  PessoaGetter.instancia.nome = 'Fernando';
  print(PessoaGetter.instancia.nome);

  /// O bloco abaixo armazena dados diferentes na mesma instancia.
  var p1 = PessoaGetter.instancia;
  var p2 = PessoaGetter.instancia;

  p1.nome = 'Leila';
  print(PessoaGetter.instancia.nome);

  p2.nome = 'Chloe';
  print(PessoaGetter.instancia.nome);

  /// Abaixo temos um comparativo para comprovar que
  /// estamos manipulando a mesma instancia.
  print(identical(p1, p2));
  print(p2 == PessoaGetter.instancia);
}
