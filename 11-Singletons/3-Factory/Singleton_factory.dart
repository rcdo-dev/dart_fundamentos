/*
  * Singleton
  - É um padrão de projeto para que exista uma instancia da classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  
  * Factory
  - Construtor factory é usado para retornar/manter a instancia original.
  - Construtor factory é capaz de retornar valores.
*/

import 'Singleton_pessoa_factory.dart';

singletonFactory() {
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
}

singletonInstancia() {
  print('\n11.4) Singleton Factory com parâmetros\n');

  var p1 = PessoaInstancia(nome: 'Fernando');

  /// Stack
  /// #0 p1 recebe a instancia da classe que executa o construtor factory.
  /// #1 o construtor recebe o parâmetro nome e seta um valor randomico para a identidade.
  /// #2 esse mesmo construtor retorna o singleton verificando se ele é nulo e passando o construtor nomeado.
  /// #3 o construtor nomeado recebe como parâmetros os mesmos que foram definidos no construtor factory.
  /// #4 assim o valores são atribuidos aos atributos 'nome' e '_identidade da classe'.
  /// #5 após a pilha acima podemos printar o valores conforme a linha abaixo.
  print('nome: ${p1.nome} id: ${p1.identidade}');

  /// Para o segundo objeto abaixo o construtor factory irá verificar se o
  /// singleton é nulo e como ele não é por conta do primeiro objeto acima
  /// o objeto p2 não é referenciado, ou seja, o singleton mantem os
  /// dados do objeto p1.
  var p2 = PessoaInstancia(nome: 'Leila', identidade: 12345678);
  print('nome: ${p2.nome} id: ${p2.identidade}');

  /// Podemos atribuir o valor conforme abaixo, porque se trata da mesma instancia.
  p2.nome = 'Fernando Martins';
  print('nome: ${p1.nome} id: ${p1.identidade}');

  print(identical(p1, p2));
  //print(p2 == PessoaInstancia.instancia);
}

void main() {
  /// Singleton com construtor factory.
  singletonFactory();

  /// Singleton com construtor factory com parâmetros.
  singletonInstancia();
}
