void main() {
  print('03.1) Ternário\n');

  // ignore: dead_code
  print('${!true ? 'Verdadeiro' : 'falso'}');

  int idade = 13;
  print((idade < 14)
      ? 'Criança'
      : (idade < 18)
          ? 'Adolescente'
          : 'Adulto');

  int nota = 39;
  print('${(nota < 40) ? 'reprovado' : (nota < 70) ? 'recuperação' : 'aprovado'}');
  print((nota < 40)
      ? 'reprovado'
      : (nota < 70)
          ? 'recuperação'
          : 'Aprovado');

  print('${(nota < 40) ? 'reprovado' : (nota < 70) ? 'recuperação' : 'aprovado'}');

  int numero = 12;
  print('Numero: $numero é ${(numero % 2 == 0) ? 'par' : 'impar'} e ${(numero >= 0) ? 'positivo' : 'negativo'}!');

  int multiplo = 3;
  print('Numero: $numero ${(numero % multiplo == 0) ? 'é' : 'não é'} multiplo de $multiplo');
}
