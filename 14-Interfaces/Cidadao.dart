/// Classes abstratas servem como modelo e não podem ser instanciadas.
abstract class Cidadao {
  String nome;

  Cidadao(this.nome);

  /// O método abaixo (sem escopo) deve ser obrigatóriamente
  /// sobrescrito na classe herdeira.
  void objetivosPessoais();

  void direitosDeveres() {
    print('Todo cidadão tem direitos e deveres.');
  }
}
