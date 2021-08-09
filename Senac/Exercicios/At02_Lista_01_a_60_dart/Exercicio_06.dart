import 'dart:io';

import 'dart:math';

main() {
  stdout.write('\nInsira o raio do circulo: ');

  int raio = int.parse(stdin.readLineSync()!);

  double area = 3.14 * pow(raio, 2);

  print('\nA area do circulo e de: $area m²\n');
}
