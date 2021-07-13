///Exemplo de construtor defautl com parâmetros nomeados e default.
class Pessoa {
  String? nome;
  int? idade;
  String? cor;
  double? altura;

  /// Construtor com tratativas diferentes para seus parâmetros.
  Pessoa(this.nome, this.idade, {String? cor, this.altura = 0}) {
    this.cor = (cor == null) ? 'indefinida' : cor;
    print('Construtor resumido com parâmetros nomeados! ${this.toString()}');
  }
}