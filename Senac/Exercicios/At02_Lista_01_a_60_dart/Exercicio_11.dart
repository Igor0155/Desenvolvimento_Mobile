import 'dart:io';

main() {
  stdout.write('\nInsira a temperaturam em Celsius: ');

  double C = double.parse(stdin.readLineSync()!);

  double F = (C * 9 / 5) + 32;

  print('\nTemperatura em Farenheit: $F °F\n');
  
}
