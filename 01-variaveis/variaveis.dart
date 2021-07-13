void main() {
  print('01.0) Variaveis');
  // vb va calca - Não abreviar o nome de variáveis, métodos e funções. Boas práticas de programação.
  // Tipos de comentários:
  // Do format coment {//}
  // Block coment {/* bla bla bla */}
  // Doc Coment {///}

/*
Instruções de formatação de texto no Dart:
  "backspace": "\b",
  "form feed": "\f",
  "newline": "\n",
  "return": "\r",
  "tab": "\t",
*/

  var valorA = 10;
  var valorB = 4;
  var valorC = 2.5;
  var resultado;
  resultado = valorA + valorB + valorC;
  print(resultado);
  var salario = 1000, descontos = 250;
  var conta = salario - descontos;
  print(conta);
  var numero = 3 + ((2 * 4) + (10 / 5));
  print(numero);

  print('');

  print("concatenar "
      "Strings "
      "é simples assim");

  var texto1 = '\nFernando ';
  var texto2 = "Martins";
  var texto3 = '''\n e 
Leila Martins\n''';

  var nome = texto1 + texto2 + texto3;
  print(nome);

  print('''ricardo
  cardoso''');

  var verdadeiro = true;
  var falso = false;
  // $ variaveis // ${} operações
  print('verdadeiro = ${verdadeiro}'); // interpolação
  print('falso = ' + "$falso"); // concatenação
  print(''.runtimeType); // descobre o tipo de variável em tempo de execução
  const pi = 3.14; // Variável constante é atribuída em tempo de compilação
  nome = 'Fernando'; // declaração de String errada
  String sobrenome = 'Martins';
  int idade = 36;
  double altura = 1.83;
  bool adulto = true;

  print('\nnome:' + "$nome \nQtd de letras: ${nome.length}" + """\nSobrenome: $sobrenome \nQtd de letras ${sobrenome.length}\n""");

  print('''
  idade: $idade
  altura: $altura
  adulto: $adulto
  \npi: $pi\n
  ''');

  dynamic variavel = 2.0;
  variavel = 2;
  variavel = 'dois';
  variavel = true;
  print(variavel);
}
