import 'dart:io';

main() {
  print('\nInsira a quantidade de quilostem o peixe:');

  double peso = double.parse(stdin.readLineSync()!);

  if (peso > 50) {
    double multa = (peso - 50) * 4;
    double excesso = (peso - 50);
    print('\no peixe teve excesso de $excesso\kg e o valor da multa será: R\$$multa\n');
  } else {
    double multa = 0.0;
    print('\nNao houve excesso e teve $multa de multa\n');
  }
  
}
