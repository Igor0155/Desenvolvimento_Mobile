import 'dart:io';

main() {
  stdout.write('\nInsira o 1° numero: \n');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° numero: \n');
  double num2 = double.parse(stdin.readLineSync()!);

  if (num1 < num2) {
    num1 = num2;
  }

  print('Maior = $num1');
}
