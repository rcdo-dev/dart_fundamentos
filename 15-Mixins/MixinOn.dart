/*
  * Conceito
  - Um Mixin permite implementar métodos e atributos necessários a um determinado contexto da classe.

  * Regras
  - Os mixins devem ser implementados antes das interfaces;
  - Eles podem ser implementados a partir de uma classe concreta ou abstrata;
  - Não podemos implementar uma herança de outra classe em um mixin e tão menos herdar um mixin diretamente;
  - Podemos implementar mais de um mixin, e não é obrigatório usar todos os métodos e
  atributos (salvo os métodos sem escopo, esses devem ser sobrescritos);
  - As classes que possuem métodos iguais serão sobrescritas em ordem até a classe herdeira.

  * ON
  - É obrigatório declarar sua classe como mixin;
  - Restringe o uso do mixin as classes que herdem ou implementam a classe declarada após
  a palavra ON.
  */

// CLASSE ABSTRATA

abstract class Artista {
  void acao() {
    print('Performista...');
  }
}

// MIXINS

/// Somente classes que herdem a classe Artista
/// podem usar o mixin Cantor.
mixin Cantor on Artista {
  void acao() {
    print('Cantar');
  }
}

/// Mixin criado a partir de uma
/// classe concreta e sem a restrição 'on'.
class Dancarino {
  void acao() {
    print('Dança');
  }
}

// INTERFACE

abstract class Acao {
  void executar();
}

// Classes Concretas

/// A Hierarquia dos mixins funciona da direita para esquerda na
/// execução dos seus métodos. Realize as modificações informadas
/// em Step by step no método 'main()' para vê-la.
class Musico extends Artista with Dancarino, Cantor implements Acao {
  /// Método nativo da classe.
  void acao() => print('Compoe');

  @override
  void executar() {
    super.acao(); // método da classe superior.
    acao(); // chamada do método nativo da classe.
  }
}

/// Essa classe não herda a classe Artista e portanto, não pode
/// implementar o mixin Cantor. Como a classe Dancarino é um mixin
/// de uma classe concreta e sem restrições ela pode ser usada neste contexto.
class MC with Dancarino implements Acao {
  /// Método nativo da classe.
  void acao() => print('Mixa .. bota o batidão!');

  @override
  void executar() {
    super.acao(); // método da classe superior.
    acao(); // chamada do método nativo da classe.
  }
}

void main() {
  print('15.1) Mixin On\n');

  Musico musico = Musico();

  /// Step by step
  /// -> modificações: nenhuma.
  /// #0 executa o método 'acao()' do mixin Cantor e o método 'acao()' nativo da classe.
  /// saída: 'Cantar Compoe'
  ///
  /// -> modificações: método 'acao()' nativo da classe comentado.
  /// #1 executa o método 'acao()' do mixin Cantor duas vezes, pois a chamada do método
  /// 'acao()' sem a palavra 'super.' é entendida como sendo da classe superior, que no
  /// caso é o mixin Cantor.
  /// saída: 'Cantar Cantar'
  ///
  /// -> modificações: implementação do mixin Cantor comentada + a modificação anterior.
  /// #2 executa o método 'acao()' do mixin Dancarino duas vezes.
  /// saída: 'Dança Dança'
  ///
  /// -> modificações: implementação do mixin Dancarino comentada + a modificação anterior.
  /// #3 executa o método 'acao()' da classe herdada Artista duas vezes.
  /// saída: 'Performista... Performista...'
  musico.executar();

  print('');

  MC mc = MC();
  /// Podemos realizar a mesma lógica de modificações do objeto 'musico' no objeto 'mc'.
  mc.executar();
}
