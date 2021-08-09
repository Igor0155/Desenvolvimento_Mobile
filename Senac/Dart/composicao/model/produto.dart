
class Produto {
  int codigo;
  String nome;
  double preco;
  double desconto;

  //Construtor
  Produto(
      {required this.codigo,
      required this.nome,
      required this.preco,
      this.desconto = 0});

  //Método especial para dar o desconto
  double get precoComDesconto {
    //Exemplo: dar 20 -- 1 - .20 --> pega 80% do valor
    return (1 - desconto) * preco;
  }
}