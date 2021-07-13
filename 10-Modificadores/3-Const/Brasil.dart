class Brasil {
  /// O final menciona que o valores serão atribuidos em tempo
  /// de execução e não poderão ser alterados posteriormente.
  /// Por isso podemos passar valores para variáveis do tipo final.
  final double? latitude;
  final double? longitude;

  /// O const é declarado com o valor atribuído e não será possível alterá-lo.
  /// Para acessá-lo é preciso o uso do modificador 'static', pois esse valor
  /// não terá qq mudança, mesmo se a classe for instanciada.
  static const String capital = 'Brasilia';
  static const estados = ['SP', 'RJ', 'MG', '...'];

  /// Aqui definimos o construtor também como const, ou seja é um construtor imutável.
  const Brasil(this.latitude, this.longitude);
}
