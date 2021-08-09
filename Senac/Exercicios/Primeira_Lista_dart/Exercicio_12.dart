import 'dart:io';
import 'dart:math';

main() {
  stdout.write('\nInsira o 1° numero inteiro: ');

  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° numero inteiro: ');

  int num2 = int.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 1° numero real: ');

  int num_real = int.parse(stdin.readLineSync()!);

  // double produto = (num1 * 2 ) + (num2 / 2);
  print('\nProduto: ${(num1 * 2) + (num2 / 2)}\n');
  print('Soma do triplo: ${(num1 * 3) + num_real}\n');
  print('Terceiro elevado ao cubo: ${pow(num_real , 3)}\n');
}
