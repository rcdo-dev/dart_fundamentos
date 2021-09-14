import 'dart:collection';

splayTreeSet() {
  print('16.2.3) SplayTreeSet\n');

  SplayTreeSet<String?> splayTreeSet =
      SplayTreeSet(); // import 'dart:collection';
  print(
    'Imnplementação: ${splayTreeSet.runtimeType}\n',
  ); // SplayTreeSet<String>

  splayTreeSet.add('info1');
  splayTreeSet.add('info3');
  splayTreeSet.add('info');
  splayTreeSet.add('info2');
  // splayTreeSet.add(null); // Não pode conter null.

  print(splayTreeSet);

  print('');

  ///
  /// LOOPS em uma lista HashSet.
  ///

  /// O for nos permite manipular como percorremos a lista de elementos,
  /// de frente para tras ou vice-versa, tudo através da manipulação dos índices.
  for (var i = 0; i < splayTreeSet.length; i++) {
    // print(splayTreeSet[i]); // Não tem acesso ao índice mas podemos usar elementAt.
    print('for: ${splayTreeSet.elementAt(i)}');
  }

  print('');

  /// O for in somente percorre a lista de elementos. Não a mesma flexibilidade
  /// encontrada nos loop for mencionado acima.
  for (var item in splayTreeSet) {
    print('for in: $item');
  }

  print('');

  /// Também podemos manipular a lista com o forEach.
  splayTreeSet.forEach((element) => print('forEach: $element'));

  ///
  /// Funções Específicas - Lista HashSet
  ///

  /// Assim como em LinkedHashSet e HashSet também podemos usar as funções específicas em SplayTreeSet.
  /// .difference();
  /// .union();
  /// .intersection();
  /// .lookup();
}

void main() {
  splayTreeSet();
}
