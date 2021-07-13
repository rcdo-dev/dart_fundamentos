void main() {
  bool operacaoUm, operacaoDois;

  operacaoUm = (1 <= 2) && (3 > 2);
  print(operacaoUm);

  operacaoDois = !(1 > 2) && ((3 < 2) || false);
  print(operacaoDois);
}
