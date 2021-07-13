funcoesAnonimas(){
  print('06.4.0) Funções Anonimas Conceito\n');

  print(''' SINTAXE

  (){
    print('Função Anonima');
  }

  () => print('Função anonima sintaxe Arrow!');
  ''');

  print('06.4.1) Funções Anonimas como Variáveis\n');

  var variavelAnonima = () => print('Variável Anonima');
  variavelAnonima();

  var variavelAnonimaParametro = (String msg) => print('Variável anonima $msg');
  variavelAnonimaParametro('com parâmetro');

  print('\n06.4.2) Funções Anonimas como Parâmetro\n');

  void executarFuncao(Function funcao) => funcao();
  executarFuncao(()=> print('Função anonima como parâmetro'));
}

void main(){
  funcoesAnonimas();
}