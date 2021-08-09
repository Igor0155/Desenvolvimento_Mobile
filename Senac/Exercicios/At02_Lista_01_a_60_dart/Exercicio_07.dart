import 'dart:io';

import 'dart:math';

main() {
  stdout.write('\nInsira o lado do quadrado: ');

  double lado = double.parse(stdin.readLineSync()!);

  double area = pow(lado, 2) * 2;

  print('\nA area do quadrado: $area m²\n');
  
}
