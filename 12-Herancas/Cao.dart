import 'Mamiferos.dart';

/// Aqui a classe Mamiferos é a classe super da classe Cao.
class Cao extends Mamimeferos {
  String? nome;
  String? raca;

  /// Neste construtor temos a tipagem dos parâmetros por ser
  /// a última classe herdeira. Se não realizarmos esse procedimento aqui
  /// não saberemos qual o tipo do parâmetro na instancia do objeto.
  Cao(
    this.nome,
    this.raca,
    String? sexo, {
    String? idade,
    bool? docil = false,
  }) : super(sexo, idade, docil) {
    this.idade = (idade == null) ? 'idefinida' : idade;
    this.sexo = (sexo == null) ? 'idefinido' : sexo;
  }

  void acao() {
    print('Late como um cão');
  }
}
