/*
  * Const
    - Inicializada em tempo de compilação, deve ser declarada com valor constante.
    - Ao nível de classes deve ser estática para ficar disponível na classe.
    - Em coleções const todo o conteúdo deve ser constante.
  * Objeto imutável
    - O construtor deve ser constante.
    - As variáveis devem ser final ou static const.
*/

import 'Brasil.dart';

void main() {
  print('10.2) Moficadores Const\n');

  /// Inicializada em tempo de compilação, deve ser declarada com valor constante.
  const pi = 3.14;
  double raio = 2;
  var resultado = pi * (raio * raio);
  print('${resultado}\n');

  /// Em um array final é possível adicionar valores.
  final numeros = [raio, 2.5];
  numeros.add(resultado);
  print(numeros);

  /// A atribuição da lista declara o modificador 'const', isso informa que o conteúdo
  /// da lista não é modificável, portanto não podemos adicionar valores à ela.
  final listaFinal = const [0, 1];
  // listaFinal.add(2);
  print(listaFinal);

  /// Uma lista declarada com o modificador 'const' também não permite que seu conteúdo
  /// seja modificável, aqui também não podemos adicionar valores a lista.
  const listaConst = [1, 2, pi];
  //listaConst.add(pi);
  print('$listaConst\n');

  for (var i = 0; i < 3; i++) {
    /// indiceFinal recebe o valor de i em tempo de execução.
    /// O i só será definido após o loop ser executado.
    final indiceFinal = i;
    const constante = 1; // Sempre será constante com o valor 1.
    print('contagem: ${constante + indiceFinal}');
  }

  var pais = Brasil(-15.792371, -47.882326);
  

  /// Os valores abaixo não podem ser alterados porque a classe é imutável.
  //pais.latitude = 0;
  //Brasil.capital ='';

  /// Nota: printar o objeto nos mostra a qual classe ele pertence.
  print(
      '\nobjeto: $pais capital: ${Brasil.capital} latitude: ${pais.latitude} longitude: ${pais.longitude}');
  print('Estados: ${Brasil.estados}');
}
