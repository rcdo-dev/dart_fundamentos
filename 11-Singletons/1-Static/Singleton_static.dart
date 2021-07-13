/*
  * Singleton
  - É um padrão de projeto para que exista uma instancia da classe.
  - O construtor nomeado privado sem o construtor default impede de instanciar a classe.
  
  * Static
  - A instancia pode ser acessada diretamente.
*/

import 'Singleton_pessoa_static.dart';

void main() {
  print('11.1) Singleton static\n');

  print(PessoaStatic.instancia.nome);

  /// Atribuindo valor ao atributo nome através do Singleton.
  PessoaStatic.instancia.nome = 'Fernando';
  print(PessoaStatic.instancia.nome);

  /// Também é possível atribuir os Singleton a variáveis.
  var p1 = PessoaStatic.instancia;
  var p2 = PessoaStatic.instancia;

  p1.nome = 'Leila'; // Alteração do mesmo atributo nome.
  print(PessoaStatic.instancia.nome);

  p2.nome = 'Chloe'; // Alteração do mesmo atributo nome.
  print(PessoaStatic.instancia.nome);

  /// Aqui identificamos que se trata da mesma instancia,
  /// ou seja, do mesmo singleton.
  print(identical(p1, p2));
  print(p2 == PessoaStatic.instancia);
}
