main() {
  print('02.0) Operadores Lógicos ( && || !)');

  /// operador && soment se ambas afirmações for true o retorno será true.
  /// Operador || precisa somente de uma afirmação verdadeira para retornar true.
  /// operador ! inverte o valor booleano.

  var verdadeiro = !false;
  bool falso = !true;
  print('Verdadeiro = $verdadeiro e Falso = $falso');
  print('Operador (!) !true = ${!true} e !false = ${false}');

  bool teste1 = verdadeiro || verdadeiro;
  bool teste2 = verdadeiro || falso; // se uma das condições for verdade o retorno será verdade no OU.
  bool teste3 = falso || falso; // no OU ambas as comparações devem ser falsas para termos um retorno falso.

  print(teste1);
  print(teste2);
  print(teste3);

  print('----------------------------------------------------------');

  bool teste4 = verdadeiro && verdadeiro; // no E ambas as comparações devem ser verdadeiras para termos um retorno verdadeiro.
  bool teste5 = verdadeiro && falso; // se uma das condições for falsa o retorno será falso no E.
  // ignore: dead_code
  bool teste6 = falso && falso;

  print(teste4);
  print(teste5);
  print(teste6);

  print('Operador (||) $teste1 - $teste2 - $teste3');
  print('Operador (&&) $teste4 - $teste5 - $teste6');

  bool operacao = (1 <= 2) && (3 > 2);
  print(operacao);
  operacao = !(1 > 2) && ((3 < 2) || falso);
  print(operacao);
}
