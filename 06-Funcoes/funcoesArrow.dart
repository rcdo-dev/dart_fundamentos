///
/// Funções Arrow tem o retorno implícito!
///
funcaoArrow() {
  print('06.2) Funções Arrow\n');

  /// Essa função retorna uma String implicitamente
  String conceito() => 'Função Arrow com o retorno implícito';

  ///
  /// Função Arrow com parâmetros e interpolação.
  ///
  String somarValores(int valorA, int valorB) =>
      'Soma: $valorA + $valorB = ${valorA + valorB}';

  String verificarMaioridade(String nome, int idade) =>
      (idade >= 18) ? '$nome é maior de idade' : '$nome não é maior de idade';

  String calcularAreaCirculo(double raio) =>
      'Area do Circulo: ${3.14 * raio * raio}';

  /// Função arrow desconto usada na função calcularSalario
  double desconto(int faltas) => (faltas > 1) ? 0.8 : (faltas == 1) ? 0.9 : 0;

  void calcularSalario(String nome, double salario, double bonus, int faltas){
    var total = (salario * desconto(faltas)) + bonus;
    print('Empregado: $nome salario: $total');
  }

  print(conceito());
  print(somarValores(2, 3));
  print(verificarMaioridade('Fernando', 36));
  print(calcularAreaCirculo(2));
  calcularSalario('Fernando', 900, 100, 2);
}

void main() {
  funcaoArrow();
}
