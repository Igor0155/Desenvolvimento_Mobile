import 'dart:io';

main() {
  double cod = 1, total = 0;
  int i = 1;

  while (cod != 0) {
    stdout.write('Produto $i: R\$ ');
    double produto = double.parse(stdin.readLineSync()!);

    total = total + produto;

    i++;

    cod = produto;
  }

  print('Total: R\$ ${total}');

  stdout.write('Dinheiro: R\$ ');
  double dinheiro = double.parse(stdin.readLineSync()!);

  double troco = dinheiro - total;

  print('Troco R\$ ${troco}');
  
}
