class Banco {
  // atributos
  String nome;
  int conta;

  // métodos construtor
  Banco(this.nome, this.conta);

  // Método para imprimir
  imprimir_usuario() {
    print(this.nome);
    print(this.conta);
  }
}
