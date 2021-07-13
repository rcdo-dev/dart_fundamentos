/*
  * Final
    Inicializada apenas quando acessada em tempo de execução, deve ser declarada!
    Em coleções final nem todo o conteúdo será final.
*/

import 'Pessoa.dart';

void main() {
  print('10.1) Modificadores Final\n');

  // Objeto em queda livre leva 5s para chegar ao solo! Qual a velocidade máxima do objeto?

  /// Uma variável final deve ter seu valor atribuído para ser usada,
  /// e uma vez declarada o seu valor não pode ser mudado.
  final gravidade = 9.8;
  int tempo = 5;
  double velocidade = gravidade * tempo; // v = g * t
  print('Velocidade máxima: $velocidade m/s\n');

  for (int i = 1; i <= 3; i++) {
    /// A cada loop essa variável está sendo criada
    /// acessada em tempo de execução e declarada com o índice i.
    final indice = i;
    print('contagem: $indice');
  }

  var pessoa = Pessoa('Fernando', ['Leial, Chloe']);
  pessoa.nome = 'Fernando Martins';
  //pessoa.familiares = []; // erro: atributo final.
  print('nome: ${pessoa.nome} familiares: ${pessoa.familiares}');
}
