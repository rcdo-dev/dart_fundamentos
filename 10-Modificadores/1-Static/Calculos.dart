class Calculos {
  double pi = 3.14;
  static double piEstatico = 3.14;

  double areaCirculo(double raio) {
    return pi * (raio * raio);
  }

  // Em métodos estáticos deve-se usar as variáveis estáticas da classe em que o método foi criado.
  static double areaCirculoEstatico(double raio) {
    return piEstatico * (raio * raio);
  }
}
