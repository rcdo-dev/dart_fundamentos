///
/// * Set é uma coleção de elementos únicos e ordenados entre chaves {}. Não temos acesso a índice!
///

linkedHashSet() {
  print('16.2.0) LinkedHashSet == Set\n');

  Set<int?> setInt = Set();
  print(setInt.runtimeType); // _CompactLinkedHashSet<int>

  // setInt[0] = 0; // Não temos acesso ao índice da lista.

  setInt.add(13);
  setInt.add(13);
  // Pode conter null desde que o tipo da lista permita. *Null Safety*.
  setInt.add(null);
  setInt.add(17);
  setInt.add(17);
  setInt.remove(13);

  print(setInt); // Uma lista set é representada por chaves.

  print('');

  ///
  /// LOOPS em uma lista SET.
  ///

  /// O for nos permite manipular como percorremos a lista de elementos,
  /// de frente para tras ou vice-versa, tudo através da manipulação dos índices.
  for (var i = 0; i < setInt.length; i++) {
    // print(setInt[i]); // Não temos acesso ao índice, MAS podemos usar elementAt.
    print('loop for: ${setInt.elementAt(i)}');
  }

  print('');

  /// O for in somente percorre a lista de elementos. Não a mesma flexibilidade
  /// encontrada nos loop for mencionado acima.
  for (var item in setInt) {
    print('loop for in: ${item}');
  }

  print('');

  /// Também podemos manipular uma lista SET com o forEach.
  setInt.forEach((element) => print('loop forEach: $element'));

  print('');

  ///
  /// Funções Específicas - Lista SET
  ///

  Set<int> listaA = {0, 1, 2, 3, 4};
  Set<int> listaB = {3, 4, 5, 6, 7};

  /// Retorna os elementos diferentes entre as listas.
  print(listaA.difference(listaB));

  /// Retorna a união entre as duas listas desconsiderando valores duplicados.
  print(listaA.union(listaB));

  /// Retorna os elementos em comum entre as duas listas.
  print(listaA.intersection(listaB));

  /// Retorna o elemento passado como parâmetro.
  /// Se a lista contem o elemento ele é retornado, caso contrário o retorno é nulo.
  print(listaA.lookup(5));
}

void main() {
  linkedHashSet();
}
