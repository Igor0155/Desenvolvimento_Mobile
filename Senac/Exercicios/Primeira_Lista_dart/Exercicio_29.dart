import 'dart:io';

main() {
  stdout.write('\nInsira o 1° produto: \n');
  double produto1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° produto: \n');
  double produto2 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 3° produto: \n');
  double produto3 = double.parse(stdin.readLineSync()!);

  if (produto1 <= produto2 && produto1 <= produto3) {
    
    print('\nProduto 1 foi o escolhido para a compra!\n');
  }
  else if (produto2 <= produto3) {

    print('\nProduto 2 foi o escolhido para a compra!\n');
  } else {

    print('\nProduto 3 foi o escolhido para a compra!\n');
  }
}
