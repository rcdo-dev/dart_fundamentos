/*
  * Static
    A variável estática fica disponível na própria classe em vez de suas instancias/objetos.
    Em métodos estáticos deve-se usar as variáveis estáticas da classe em que o método foi criado.
    Variáveis estáticas podem ser acessadas sem precisar instanciar classes/objetos.
*/

import 'Calculos.dart';

void main() {
  print('10.0) Modificadores Static\n');

  double raio = 5;

  var calculos1 = Calculos();
  print(calculos1.pi);
  print(calculos1.areaCirculo(raio));

  print('');

  Calculos calculos2 = Calculos();
  print(calculos2.pi);
  print(calculos2.areaCirculo(raio));

  /// Se as instancias acima forem iguais, logo consomem menos memória, caso contrário o consumo de memória é maior.
  print(
      '\nInstancias consomem ${identical(calculos1, calculos2) ? 'MENOS' : 'MAIS'} memória!\n');

  print(Calculos.piEstatico);
  print(Calculos.piEstatico * (raio * raio));

  /// Exemplo de métodos diferentes para o mesmo retorno.
  /// Nota: Ao chamar a classe Calculos com parênteses estamos instanciando a classe automaticamente,
  /// diferente de chamarmos o método estático da classe que não realiza uma nova instância.
  /// O conceito aqui é a econômia de memória, pois o método estático não aloca um novo espaço pelo fato
  /// de não realizar uma nova instância.
  print(
      'Retornos iguais: ${Calculos.areaCirculoEstatico(raio) == Calculos().areaCirculo(raio) ? 'SIM' : 'NAO'} Métodos diferentes');
}
