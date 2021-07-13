semRetorno() {
  print('06.0) Funcoes sem retorno\n');

  /**
   * Void descreve que o retorno dessa função é vazio, ou seja,
   * essa função apenas executa os comandos que estão em seu corpo.
   */
  void conceito() {
    print('Funcao void sem retorno');
  }

  /**
   * Funções sem retorno com parametros.
   */
  void somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    print('Soma: $valorA + $valorB = $resultado\n');
  }

  void verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    print('$nome $resposta de idade\n');
  }

  void contagemRegressiva(int numero) {
    for (var i = numero; i >= 0; i--) {
      print('Contagem: ${(i == 0) ? "VAI!!!" : i}');
    }
    print('');
  }

  converterKparaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    print('\nArray convertido e arredondado!\n');
  }

  /**
   * Devemos chamar a função somente após a sua declaração,
   * pois não como chamar uma função que ainda não existe.
   */
  conceito();
  somarValores(2, 3);
  verificarMaioridade('Fernando', 36);
  contagemRegressiva(3);
  converterKparaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

comRetorno() {
  print('\n06.01) Funcoes com retorno\n');
  /**
   * Uma função com retorno tem o seguinte conceito,
   * executamos a função e ela retorna uma informação.
   */

  String conceito() {
    return 'Função com retorno String';
  }

  String somarValores(int valorA, int valorB) {
    var resultado = valorA + valorB;
    return 'Soma: $valorA + $valorB = $resultado\n';
  }

  String verificarMaioridade(String nome, int idade) {
    var resposta;
    if (idade >= 18) {
      resposta = 'é maior';
    } else {
      resposta = 'não é maior';
    }
    return '$nome $resposta de idade\n';
  }

  String contagemRegressiva(int numero) {
    var resultado;
    for (var i = numero; i >= 0; i--) {
      (i != 0) ? print('Contagem: $i') : resultado = 'Contagem: Vai!!!';
    }
    return resultado;
  }

  String converterKparaMilhas(dynamic array) {
    dynamic milha = 0.621271;
    for (dynamic item in array) {
      print('$item\t Km/h em Milhas/h ${(item * milha).toStringAsFixed(2)}');
    }
    return '\nArray convertido e arredondado!\n';
  }

  print(conceito());
  print(somarValores(2, 3));
  print(verificarMaioridade('Fernando', 36));
  print(contagemRegressiva(3));
  converterKparaMilhas(
      [1, 5, 10, 30, 40, 60, 80, 100, 120, 140, 160, 180, 200]);
}

void main() {
  semRetorno();
  comRetorno();
}
