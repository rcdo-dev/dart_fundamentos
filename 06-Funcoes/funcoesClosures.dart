/// Uma Closure ocorre quando uma função é declarada dentro do corpo de outra função!
/// Podendo retornar as variáveis locais e da função superior.

funcaoClosures() {
  print('06.5.1) Closures sem Retorno\n');

  var saudacao = (String nome) {
    var mensagem = (complemento) => print('Olá $nome! $complemento');
    mensagem('Seja bem vindo');
  };

  print(saudacao);
  saudacao('Fernando');

  print('\n06.5.2) Closures com Retorno\n');

  Function somar(int valorA) {
    print(valorA);
    return (double valorB) {
      print(valorB);
      return valorA + valorB;
    };
  }

  /// Configuração da closure para somar 10, podemos realizar várias configurações.
  var somarDez = somar(10);

  print(somarDez(5.0));

  Function porcentagem(desconto) => (valor) => desconto * valor;
  // Configurações diferenciadas.
  var descontarDez = porcentagem(.9);
  var descontarVinte = porcentagem(.8);
  print(descontarDez(100));
  print(descontarVinte(200));

  ///Exemplo avançado de Closure
  print('\n06.5.3) Closures com Retorno\n');

  var novoObjeto = () {
    var id = 0;
    var objetoCriado = (String nome, descricao) {
      return 'id: ${(++id).toString().padLeft(2, '0')} nome: $nome, decrição: $descricao'; // retorna em um array
    };
    return objetoCriado;
  };

  var objeto = novoObjeto();
  print(objeto);

  var listaObjetos = [objeto('Fernando', 1.99)];
  listaObjetos.add(objeto('iPhone', 3000.00));
  listaObjetos.add(objeto('Fones', 100));

  for (var objeto in listaObjetos) {
    print(objeto);
  }
  print('');
  for (var objeto in listaObjetos) {
    print(objeto.substring(7));
  }

  // Voltar nessa aula ao final do curso!
}

void main() {
  funcaoClosures();
}
