import 'dart:io';

main() {
  stdout.write('\nInsira o 1° numero: \n');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° numero: \n');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 3° numero: \n');
  double num3 = double.parse(stdin.readLineSync()!);

  double aux = 0;

  if (num1 > aux) {
    aux = num1;
  }

  if (num2 > aux) {
    aux = num2;
  }

  if (num3 > aux) {
    aux = num3;
  }

  print('\nO maior numero e o: $aux \n');
}
