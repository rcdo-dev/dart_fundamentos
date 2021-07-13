/// Exemplo de construtor defautl com parâmetros posicionados e default.
class Animal {
  String? nome;
  String? raca;
  int? idade;

  Animal(String nome, [String? raca, int idade = 0]) {
    this.nome = nome;
    this.raca = raca;
    this.idade = idade;
    print('Construtor com parâmetros default! ${this.toString()}');
  }
}