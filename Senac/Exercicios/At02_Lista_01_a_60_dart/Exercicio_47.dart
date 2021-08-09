import 'dart:io';

main() {
  stdout.write('Insira o 1° numero: ');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('Insira o 2° numero: ');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write(
      'Agora insira a operação desejada: \n1 - Par Ìmpar \n2 - Positivo Negativo \n3 - Inteiro decimal\n:: ');
  int code = int.parse(stdin.readLineSync()!);

  switch (code) {
    case 1:
      impar_par(num1, num2);
      break;
    case 2:
      positivo_negativo(num1, num2);
      break;
    case 3:
      inteiro_decimal(num1, num2);
      break;
    default:
      print('codigo errado\n');
  }
}

impar_par(double num1, double num2) {
  if (num1 != 0) {
    if (num1 % 2 == 1) {
      print('\nO numero: $num1 é impar');
    } else {
      print('\nO numero: $num1 é par');
    }
  }

  if (num2 != 0) {
    if (num2 % 2 == 1) {
      print('\nO numero: $num2 é impar\n');
    } else {
      print('\nO numero: $num2 é par\n');
    }
  }
}

positivo_negativo(double num1, double num2) {
  if (num1 >= 0) {
    print('\nO numero: $num1 e positivo');
  } else {
    print('\nO numero: $num1 e negativo');
  }

  if (num2 >= 0) {
    print('\nO numero: $num2 e positivo\n');
  } else {
    print('\nO numero: $num2 e negativo\n');
  }
}

inteiro_decimal(double num01, double num02) {
  int num1 = num01.round();
  int num2 = num02.round();

  if (num1 == num01) {
    print('o numero $num01 e inteiro');
  } else {
    print('O numero $num01 e decimal');
  }
  if (num2 == num02) {
    print('o numero $num02 e inteiro');
  } else {
    print('O numero $num02 e decimal');
  }
}
