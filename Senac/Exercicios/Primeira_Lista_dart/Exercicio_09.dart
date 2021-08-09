import 'dart:io';

main() {
  stdout.write('\nInsira a temperaturam em Farenheit: ');

  double F = double.parse(stdin.readLineSync()!);

  double C = (5 * (F - 32) / 9);

  print('\nTemperatura em Celsius: $C °c\n'); 
}
