import 'dart:io';

main() {
  stdout.write('\nInsira o numero: \n');
  double num = double.parse(stdin.readLineSync()!);

  if (num < 0) {
    print('\nNumero negativo\n');
  }
  else{
    print('\nNumero positivo\n');
  }
}
