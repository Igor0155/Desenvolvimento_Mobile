import 'dart:io';

main() {

  stdout.write('\nInsira o 1° numero: \n');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° numero: \n');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 3° numero: \n');
  double num3 = double.parse(stdin.readLineSync()!);

  if (num1 > num3) {
    double aux =  num3;
    num3 = num1;
    num1 = aux;

  }
  if (num1 > num2) {
    double aux =  num2;
    num2 = num1;
    num1 = aux;

  }
  if (num2 > num3) {
    double aux =  num3;
    num3 = num2;
    num2 = aux;

  }

  print('\nA ordem crescente e a: $num1 $num2 $num3\n');
}
