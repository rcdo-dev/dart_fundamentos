/// Classe Super / pai.
class Animal {
  String? idade;
  bool? docil;

  /// O parâmetro docil está como parametro nomeado,
  /// ou seja, ele é opcional.
  Animal(this.idade, {this.docil/*= false*/}) {
    // docil ??= false; // Fazer tratamento na classe herdeira, essa é uma classe modelo.
  }

  void dormir() {
    print('Dorme como um animal');
  }
}