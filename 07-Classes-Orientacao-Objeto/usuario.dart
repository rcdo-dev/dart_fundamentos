/// Objeto/Classe Usuario com atributos e métodos.
/// Toda classe é nomeada com a 1ª letra maiúscula.
class Usuario {
  String? usuario;
  String? senha;

  void autenticar() {
    // Dados recuperados de banco de dados mokado
    var usuario = 'fma@gmail';
    var senha = '123456';

    if (this.usuario == usuario && this.senha == senha) {
      print('Usuário autenticado\n');
    } else {
      print('Usuário não autenticado\n');
    }
  }
}