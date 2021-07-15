/*
  * Singleton
  - É um padrão de projeto para que exista uma instancia da classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  
  * Factory
  - Construtor factory é usado para retornar/manter a instancia original.
  - Construtor factory é capaz de retornar valores.
*/

import 'Singleton_pessoa_factory.dart';

void main() {
  print('11.3) Singletons Factory\n');

  var p1 = PessoaFactory();

  /// Stack
  /// #0 classe PessoaFactory executa o construtor factory que retorna instancia.
  /// #1 instancia recebe o construtor nomeado que passa o parâmetro 'indefinido'.
  /// #2 o parâmentro passado é atribuido ao atributo nome da classe.
  /// #3 através objeto p1 acessamos o atributo nome e printamos o valor atribuido.
  print(p1.nome);

  /// Através do objeto atribuímos o nome e printamos o valor através do singleton.
  /// Isso comprova que estamos manipulando a mesma instancia da classe.
  p1.nome = 'Fernando';
  print(PessoaFactory.instancia.nome);

  /// O caminho inverso ao apresentado acima também é possível.
  PessoaFactory.instancia.nome = 'Leila';
  print(p1.nome);

  /// Mesmo criando um novo objeto estamos manipulando a mesma instancia da classe.
  var p2 = PessoaFactory();
  p2.nome = 'Chloe';
  print(PessoaFactory.instancia.nome);

  /// As comparações abaixo confirmam que estamos manipulando a mesma instancia.
  print(identical(p1, PessoaFactory.instancia));
  print(p2 == PessoaFactory.instancia);

  // -> Vídeo em 6min:48seg. Continuar...
}
