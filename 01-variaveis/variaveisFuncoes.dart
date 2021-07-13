/*
  Tipos de variaveis
  Num (int / double) / String / bool / dynamic
*/

void main() {
  String sopa = 'sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print(index);
  print('A sopa é ${sopa.substring(index).trim()}');
}
