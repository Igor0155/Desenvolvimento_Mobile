import 'produto.dart';

class VendaItem {
  //Uma venda precisa de um produto
  //Compisição
  Produto produto;
  int quantidade;
  double? _preco;

  //Construtor
  VendaItem({required this.produto, this.quantidade = 1});

  //Método especial
  double get preco {
    //pega o preco com desconto
    _preco = produto.precoComDesconto;
    //Retorna o valor calculado
    return _preco!;
  }
}