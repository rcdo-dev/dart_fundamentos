class PessoaStatic {
  /// O atributo instancia é o nosso Singleton.
  /// Ele deve ser final para não ser modificado e a atribuição do construtor nomeado o inicializa.
  /// Com o modificador static podemos acessá-lo fora da classe e acessar os demais atributos.
  static final instancia = PessoaStatic._construtorNomeado();
  String? nome;

  /// Construtor nomeado privado.
  PessoaStatic._construtorNomeado();
}
