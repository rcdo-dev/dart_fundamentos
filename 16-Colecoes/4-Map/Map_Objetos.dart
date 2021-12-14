class Carro {
  String? marca;
  String? modelo;

  Carro(this.marca, this.modelo);
}

void main() {
  print('16.4.5) Map Objetos\n');

  Carro c1 = Carro('Honda', 'Civic');
  Carro c2 = Carro('Toyota', 'Corola');
  Carro c3 = Carro('Fiat', 'Pálio');

  Map<String, Carro> carros = {
    '0': c1,
    '1': c2,
  };
  carros['2'] = c3;

  /// O loop for em um Map tem um detalhe interessante:
  ///
  /// Se as chaves do Map em questão, tanto 'String' como 'num' forem
  /// ordenadas, podemos acessar os valores utilizando as chaves
  /// como índice.
  for (var i = 0; i < carros.length; i++) {
    print('for: $i ${carros['$i']?.modelo}');
  }

  print('');

  /// Print de chave e valor em um único 'For in'.
  for (String chave in carros.keys) {
    final carro = carros[chave];
    print('For in: $chave ${carro?.modelo}');
  }

  print('');

  /// Manipulando o Map de objetos com 'forEach'.
  carros.forEach((key, value) => print('forEach: $key ${value.modelo}'));

  /// Video em 5:20s.
}
