import 'dart:math';

/// Objeto/Classe Conta com atributos e métodos.
/// Toda classe é nomeada com a 1ª letra maiúscula.
class Conta {
  // Atributo com valor default.
  String nome = 'Fernando';
  int numeroConta = new Random().nextInt(1000 + 1);
  double saldo = 0;

  double consultarSaldo() => this.saldo;

  // Podemos usar o ternário para comparações quando a função é uma arrow function.
  double desconto(int faltas) => (faltas > 1)
      ? 0.8
      : (faltas == 1)
          ? 0.9
          : 0;

  void calcularSalario(double salario, double bonus, int faltas) {
    // Note que salarioCalculado recebe this.saldo(aqui o saldo da conta é atualizado) que recebe uma operação matemática.
    var salarioCalculado = this.saldo = (salario * desconto(faltas)) + bonus;
    print('Salario: $salarioCalculado Bonus: $bonus Faltas: $faltas');
  }

  void depositar(double valorDeposito) {
    // this.saldo += valorDeposito; Poderia ser abreviado assim.
    this.saldo = this.saldo + valorDeposito;
    print('Deposito: $valorDeposito Saldo: $saldo');
  }

  void sacar(double valorSaque) {
    // this.saldo -= valorSaque; Poderia ser abreviado assim.
    this.saldo = this.saldo - valorSaque;
    print('Saque: $valorSaque Saldo: $saldo');
  }
}