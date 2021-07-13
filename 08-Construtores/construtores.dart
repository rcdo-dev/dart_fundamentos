import 'animal.dart';
import 'objeto.dart';
import 'pessoa.dart';
import 'usuario.dart';

/// A primeira regra para um construtor
/// é que ele deve ter o mesmo nome da classe.
/// Um construtor é iniciado quando instanciamos as classes,
/// podendo fazer/ter configurações iniciais.

void main() {
  print('08.0) Construtores\n');

  Objeto objeto = new Objeto();
  objeto.nome = 'mesa';
  print('nome: ${objeto.nome}\n');

  Animal animal = Animal('Chloe', 'Pug');
  print('nome: ${animal.nome} raça: ${animal.raca} idade: ${animal.idade}\n');

  Pessoa pessoa = Pessoa('Fernando', 36, altura: 1.83);
  print(
      'nome: ${pessoa.nome} idade: ${pessoa.idade} cor: ${pessoa.cor} altura: ${pessoa.altura}\n');

  /// Dados inseridos pelo usuário
  Usuario usuario = Usuario('fmda@gmail', 'abc123', nome: 'Fernando');
  print(
      'usuario: ${usuario.nome} senha: ${usuario.senha} nome: ${usuario.nome} cargo: ${usuario.cargo}');
  usuario.autenticar();

  /// Dados inseridos pelo adminstrador
  Usuario admin = Usuario.adimin('fmda@gmail', 'abc12', nome: 'Fernando');
  print(
      'admin: ${admin.nome} senha: ${admin.senha} nome: ${admin.nome} cargo: ${admin.cargo}');
  admin.autenticar();
}
