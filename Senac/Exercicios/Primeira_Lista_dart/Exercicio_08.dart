import 'dart:io';

main() {
  stdout.write('\nInsira quanto você ganha por hora: ');
  double hora = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira a quantidade de horas trabalhadas no mes: ');
  double mes = double.parse(stdin.readLineSync()!);

  print('\nO total do seu salario e de: ${hora * mes}\n');
}
