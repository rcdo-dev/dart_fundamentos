import 'Usuario.dart';
import 'conta.dart';

///
/// Encapsuladores são usados para proteger os atributos e variáveis
/// Get é usado para acessar e o Set é usado para alterar
/// Atributos ou variáveis com underline são privados Ex.: _saldo
///

void main() {
  print('09.0) Encapsuladores\n');

  var usuario = Usuario('Fernando', 'abc123');

  usuario
    ..senha = '123456'
    ..alteracao = true
    ..senha = '123456';
  print('nome: ${usuario.nome} senha: ${usuario.senha}\n');

  var conta = Conta('Leila Martins');
  conta
    ..deposito = 900
    ..deposito = 450
    ..saque = 550
    ..saque = 500;

  print('');

  conta
    ..limite = 700
    ..alterarLimite = true
    ..limite = 1000;

  print('');

  conta
    ..saque = 950
    ..saque = 850;
  print('${conta.informacao}\n');

  Conta contaVip = Conta.vip('Fernando Martins', limite: 12500);
  contaVip
    ..deposito = 15000
    ..saque = 15000
    ..limite = 15000
    ..saque = 15000;
  print('${contaVip.informacao}\n');
}


// Classe de exemplo onde o VS Code sugere o encapsulamento do campo.
class Teste{
  String? _nome;

  String? get nome => _nome;

  set nome(String? nome) {
    _nome = nome;
  }
}
