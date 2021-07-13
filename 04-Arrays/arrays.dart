///
/// Array é uma lista dinamica e ordenada de elementos entre colchetes.
///

void main(){
  print('04.0) Arrays\n');

  var textos = ['fernando', 'leila']; // Array de Strings
  var numeros = [1,2.5,5,31,36];
  var condicoes = [!false, true, false, null];

  print('${textos[0]} e ${textos[1]}');
  print('${textos[0]} tem ${numeros[4]} anos');
  print('${textos[1]} ${numeros[3] > 17 ? 'é maior' : 'não é maior'} de idade');
  print('condicoes[3] == null: ${condicoes[3] ?? 'é nulo'}');

  bool verdadeiro = !false;
  var arrayDinamico = ['texto', [], 3, 1.5, verdadeiro];
  
  arrayDinamico[0] = textos[0];
  arrayDinamico[1] = ['Martins', 'de', 'Andrade'];
  arrayDinamico[2] = numeros[2];
  arrayDinamico[3] = numeros[1];
  arrayDinamico[4] = !verdadeiro;

  print(arrayDinamico);

  print('\n04.1) Arrays Funções\n');

  arrayDinamico.add(10);
  arrayDinamico.insert(0, 'leila');
  print(arrayDinamico);
  arrayDinamico.removeAt(1);
  print(arrayDinamico);
  arrayDinamico.removeRange(1, 4);
  print(arrayDinamico);
  arrayDinamico.remove('leila');
  print(arrayDinamico);
  print(arrayDinamico.length);

  arrayDinamico.clear();

  // ignore: unnecessary_null_comparison
  // print('$arrayDinamico == null: ${arrayDinamico == null}');
  // print('$arrayDinamico == null: ${arrayDinamico.isEmpty}');
  // arrayDinamico.length = 1;
  // print('$arrayDinamico ?? ${arrayDinamico.contains(null)}');

  numeros = [10,5,1,2.25,7.5];
  numeros.sort();
  print(numeros);
  textos = ['fernando', 'leila', 'bartolomeu'];
  textos.sort((b, a)=> a.compareTo(b)); // array em ordem decrescente.
  print(textos);


}