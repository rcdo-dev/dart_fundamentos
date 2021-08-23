class Vendedor {
  String? nome;
  List<Venda> vendas;
  Vendedor(this.nome, this.vendas);
}

class Venda {
  String? produtos;
  double? preco;
  Venda(this.produtos, this.preco);
}

void main() {
  print('16.1.8) List - Ordenando Objetos\n');

  List<Vendedor> vendedores = [];
  vendedores.add(
    Vendedor(
      'Fernando',
      [
        Venda(
          'iPhoneX',
          4199.99,
        ),
        Venda(
          'MacBookPro',
          5300.00,
        ),
        Venda(
          'GalaxyS10',
          3500.25,
        ),
      ],
    ),
  );
  vendedores.add(
    Vendedor(
      'Leila',
      [
        Venda(
          'iPhone8',
          3000.00,
        ),
        Venda(
          'GalaxyS10',
          3500.25,
        ),
        Venda(
          'iPhoneX',
          4199.99,
        ),
      ],
    ),
  );
  vendedores.add(
    Vendedor(
      'Chloe',
      [
        Venda(
          'iPhoneX',
          4199.99,
        ),
        Venda(
          'iPhoneX',
          4199.99,
        ),
        Venda(
          'GalaxyS10',
          3500.25,
        ),
      ],
    ),
  );
  vendedores.add(
    Vendedor(
      'Ricardo',
      [
        Venda(
          'Caneta',
          2.56,
        ),
      ],
    ),
  );

  /// Organizando a lista pela soma total.
  vendedores.sort((b, a) => (a.vendas
      .fold(0.0, (double anterior, atual) => anterior + atual.preco!.toDouble())
      .compareTo(b.vendas.fold(
          0.0, (anterior, atual) => anterior + atual.preco!.toDouble()))));

  /// Organizar as vendas de cada vendedor
  vendedores.forEach((element) =>
      element.vendas.sort((b, a) => a.preco!.compareTo(b.preco!.toDouble())));

  /// Printando a lista pela soma total.
  vendedores.forEach((element) => print(
      'Vendedor #${element.nome} \t ${element.vendas.length} vendas \t totalizando ${element.vendas.fold(0.0, (double anterior, atual) => anterior + atual.preco!.toDouble())} \t vendas: ${element.vendas.map((e) => e.preco).toList()}'));
}
