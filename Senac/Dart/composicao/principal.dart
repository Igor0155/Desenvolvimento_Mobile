import 'model/cliente.dart';
import 'model/produto.dart';
import 'model/venda.dart';
import 'model/venda_item.dart';

main() {
  //Criando uma venda
  var venda = Venda(
      //Colocando valores nos atributos de Venda
      cliente: new Cliente(
          //composição
          nome: 'José das Couves',
          cpf: '999.888.777-22'
      ),
      //Dentro da Venda tem uma Lista List() de itens
      itens: <VendaItem>[
        new VendaItem(
            //Composição
            quantidade: 50,
            produto: new Produto(
                //composição
                codigo: 0001,
                nome: 'Clips',
                preco: 2.0,
                desconto: 0.5
            )
        ),
        new VendaItem(
            //Composição
            quantidade: 40,
            produto: Produto(
                //composição
                codigo: 0002,
                nome: 'Apontadores',
                preco: 5.0,
                desconto: 0.25
            )
        ),
        new VendaItem(
            //Composição
            quantidade: 30,
            produto: Produto(
                //composição
                codigo: 0001,
                nome: 'Estojos',
                preco: 2.0,
                desconto: 0.5
            )
        ),
      ]
  );

  print('========================================');
  print('Nome do Cliente: ${venda.cliente.nome}');
  print('CPF do Cliente: ${venda.cliente.cpf}');
  print('Item 1: ${venda.itens[0].produto.nome}');
  print('Item 2: ${venda.itens[1].produto.nome}');
  print('Item 3: ${venda.itens[2].produto.nome}');
  print('----------------------------------------');
  print('O valor total da venda: ${venda.valorTotal}');
  print('========================================');
}

