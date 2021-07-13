///Exemplo de construtor nomeado com parâmetros nomeados.
class Usuario {
  String? user, senha, nome, cargo;
  int? idade;

  Usuario(this.user, this.senha, {this.nome, String? cargo}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = (cargo == null) ? 'Usuário' : cargo;
    print(
        'Construtor resumido com parâmetros nomeados default! ${this.toString()}');
  }

  Usuario.adimin(this.user, this.senha, {this.nome}) {
    this.nome = (nome == null) ? 'sem nome' : nome;
    this.cargo = 'Administrador';
    print(
        'Construtor nomeado com parâmetros nomeados default! ${this.toString()}');
  }

  void autenticar() {
    // dados recuperados do banco de dados
    var user = 'fmda@gmail';
    var senha = 'abc123';
    (this.user == user && this.senha == senha)
        ? print('Usuario autenticado\n')
        : print('Usuario não autenticado\n');
  }
}