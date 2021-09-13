import 'dart:collection';

///
/// * HashSet é uma coleção de elementos únicos e desordenado.
///

hashSet() {
  print('16.2.1) HashSet\n');

  HashSet<String?> hashSet1 = HashSet(); // Import 'dart:collection';
  HashSet<int> hashSet2 = HashSet();
  HashSet<int> hashSet3 = HashSet();

  print('Implementação: ${hashSet1.runtimeType}'); // _HashSet<String>

  hashSet1.add('A');
  hashSet1.add('B');
  hashSet1.add('C');
  hashSet1.add('D');
  hashSet1.add(null); // Pode conter null, desde que permitido. *null safety*.

  /// Se o valor da lista int for com 1 decimal, esta ficará ordenada.
  hashSet2.add(1);
  hashSet2.add(2);
  hashSet2.add(3);

  /// Lista do tipo int com mais de 1 decimal ficará desordenada.
  hashSet3.add(11);
  hashSet3.add(22);
  hashSet3.add(33);

  print('$hashSet1 \n$hashSet2 \n$hashSet3');

  print('');

  ///
  /// LOOPS em uma lista HashSet.
  ///

  /// O for nos permite manipular como percorremos a lista de elementos,
  /// de frente para tras ou vice-versa, tudo através da manipulação dos índices.
  for (var i = 0; i < hashSet1.length; i++) {
    // print(hashSet1[i]); // Não temos acesso ao índice dessa forma, mas podemos usar '.elementAt()'.
    print('for hashSet1: ${hashSet1.elementAt(i)}');
  }

  print('');

  /// O for in somente percorre a lista de elementos. Não a mesma flexibilidade
  /// encontrada nos loop for mencionado acima.
  for (var item in hashSet2) {
    print('for in hashSet2: $item');
  }

  print('');

  /// Também podemos manipular uma lista SET com o forEach.
  hashSet3.forEach((element) => print('forEach hashSet3: $element'));

  ///
  /// Funções Específicas - Lista HashSet
  ///

  /// Assim como em LinkedHashSet também podemos usar as funções específicas em HashSet.
  /// .difference();
  /// .union();
  /// .intersection();
  /// .lookup();
}

void main() {
  hashSet();
}
