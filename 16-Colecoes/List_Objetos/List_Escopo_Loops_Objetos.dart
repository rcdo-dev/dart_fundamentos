class Proprietario {
  String? nome, endereco;
  List<Carro>? carros;
  Proprietario(
    this.nome,
    this.endereco,
    this.carros,
  );
}

class Carro {
  String? marca, modelo, placa;
  Caracteristicas? caracteriscas;
  List<Multa>? multas;

  Carro(
    this.marca,
    this.modelo,
    this.placa,
    this.caracteriscas, {
    List<Multa>? multas,
  }) {
    this.multas = multas;
  }
}

class Caracteristicas {
  String? tipo;
  int? passageiro;
  int? potencia;
  String? combustivel;

  Caracteristicas(
    this.tipo,
    this.passageiro,
    this.potencia,
    this.combustivel,
  );
}

class Multa {
  String? descricao, tipo;
  int? pontos;
  Multa(
    this.descricao,
    this.tipo,
    this.pontos,
  );
}

void main() {
  print('16.1.9) List -> escopo de loops em Objetos\n');

  List<Proprietario> proprietarios = [
    Proprietario(
      'Fernando',
      'Rua dos Tolos, 0',
      [
        Carro(
          'Honda',
          'Civic',
          'ABC1234',
          Caracteristicas(
            'Passeio',
            5,
            130,
            'Gasolina',
          ),
          multas: [
            Multa(
              'Excesso de velocidade',
              'Gravíssima',
              7,
            ),
            Multa(
              'Estacionar local proibido',
              'Grave',
              5,
            )
          ],
        ),
        Carro(
          'Fiat',
          'Palio',
          'CBA4321',
          Caracteristicas(
            'Passeio',
            5,
            103,
            'Gasolina',
          ),
          multas: [
            Multa(
              'Excesso de velocidade',
              'Gravíssima',
              7,
            ),
            Multa(
              'Excesso de velocidade',
              'Grave',
              5,
            )
          ],
        ),
      ],
    ),
  ];

  // proprietarios.sort((b, a) => a.nome!.compareTo(b.nome.toString())); // duplicar proprietário e utilizar o atributo nome

  // Multas em ordem crescente.
  proprietarios.forEach(
    (element) => element.carros?.forEach(
      (element) => element.multas?.sort(
        (a, b) => a.pontos!.compareTo(b.pontos!.toInt()),
      ),
    ),
  );

  for (var i = 0; i < proprietarios.length; i++) {
    var carros = proprietarios[i].carros;
    for (var carro in carros!) {
      carro.multas?.forEach((element) {
        print(
          '${proprietarios[i].nome} \t ${carro.modelo} ${carro.placa} ${carro.caracteriscas?.tipo} \t ${element.descricao} ${element.tipo} - ${element.pontos} pontos',
        );
      });
    }
  }
}
