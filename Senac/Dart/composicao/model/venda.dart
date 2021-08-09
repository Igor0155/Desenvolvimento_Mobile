
import 'cliente.dart';
import 'venda_item.dart';

class Venda {
  //Venda precisa de um cliente
  Cliente cliente;

  List<VendaItem> itens;

  //Construtor
  Venda({required this.cliente, this.itens = const []});

  //Calcular o valor total da compra.
  //Método especial
  double get valorTotal {
    return itens
        .map((item) => item.preco * item.quantidade)
        .reduce((total, atual) => total + atual);
  }
}