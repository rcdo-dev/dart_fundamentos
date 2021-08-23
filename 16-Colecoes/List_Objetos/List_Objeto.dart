import 'dart:math';

class Pessoa {
  String? nome, sobrenome;
  int? _identidade;

  Pessoa(this.nome, this.sobrenome, {int? identidade}) {
    this._identidade =
        (identidade == null) ? Random().nextInt(99999999) : identidade;
  }

  int? get identidade => _identidade;
}

void main() {
  print('16.1.7) List - Manipulando Objetos\n');

  Pessoa p1 = Pessoa('Fernando', 'Martins', identidade: 12345678);
  Pessoa p2 = Pessoa('Leila', 'Martins', identidade: 87654321);

  List<Pessoa> pessoas = [p1, p2];

  /// Na função '.add()' o objeto é instanciado diretamente.
  pessoas.add(Pessoa('Chloe', 'Martins'));

  /// for
  for (var i = 0; i < pessoas.length; i++) {
    print(
      'for: ${pessoas[i].nome} ${pessoas[i].sobrenome} id: ${pessoas[i].identidade}',
    );
  }

  print('');

  /// for in
  for (var pessoa in pessoas) {
    print(
      'for in: ${pessoa.nome} ${pessoa.sobrenome} id: ${pessoa.identidade}',
    );
  }

  print('');

  /// forEach
  pessoas.forEach(
    (element) => print(
      'forEach: ${element.nome} ${element.sobrenome} id: ${element.identidade}',
    ),
  );
}
