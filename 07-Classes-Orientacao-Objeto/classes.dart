import 'conta.dart';
import 'pessoa.dart';
import 'usuario.dart';

///
/// Classes => Objetos
/// Variáveis => Atributos
/// Funcoes => Métodos
///

void main() {
  print('07.0) Classes/Objetos\n');

  /// pessoa1 recebe uma instância do objeto/classe Pessoa().
  /// Dessa forma pessoa1 tem acesso aos atributos e métodos do objeto Pessoa().
  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Fernando';
  pessoa1.idade = 36;
  print('Nome: ${pessoa1.nome} Idade: ${pessoa1.idade}');

  /// pessoa2 também recebe uma instância do objeto/classe Pessoa(). No Dart não é necessário o comando new para instanciar um Objeto.
  /// Assim podemos ter várias instâncias utilizando o mesmo modelo de classe.
  Pessoa pessoa2 = Pessoa();
  pessoa2.nome = 'Leila';
  pessoa2.idade = 31;
  print('Nome: ${pessoa2.nome} Idade: ${pessoa2.idade}\n');

  /// No Dart, quando trabalhamos com objetos, podemos utilizar o OPERADOR EM CASCATA!
  /// Ele permite emitir várias chamadas por meio de um objeto.
  var pessoa3 = Pessoa();
  pessoa3
    ..nome = 'Chloe'
    ..idade = 1
    ..info();

  /// Instância da classe usuário.
  Usuario usuario = new Usuario();
  usuario.usuario = 'fma@gmail';
  usuario.senha = '12345';
  usuario.autenticar();

  /// Instância da classe conta.
  Conta conta = Conta();
  print(
      'Nome: ${conta.nome} NºConta: ${conta.numeroConta} Saldo: ${conta.consultarSaldo()}');
  conta.calcularSalario(950, 150, 2);
  conta.depositar(150);
  conta.sacar(50);
}
