void main() {
  double numero = 3.14752;
  String maisNumero = numero.toStringAsFixed(2);
  double outroNumero = double.parse(numero.toStringAsFixed(2));

  print(numero.runtimeType);
  print(maisNumero.runtimeType);
  print(outroNumero.runtimeType);
}
