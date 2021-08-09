import 'dart:io';

import 'dart:math';

main() {
  stdout.write('Insira o valor de A:');
  double Valor_A = double.parse(stdin.readLineSync()!);

  if (Valor_A == 0) {
    print('\nO valor de A não pode ser 0 \n');
  } else {
    stdout.write('Insira o valor de B:');
    double Valor_B = double.parse(stdin.readLineSync()!);

    stdout.write('Insira o valor de C:');
    double Valor_C = double.parse(stdin.readLineSync()!);

    Equacao_2_Grau(Valor_A, Valor_B, Valor_C);
  }
}

Equacao_2_Grau(double A, double B, double C) {
  double delta = pow(B, 2) - 4 * A * C;

  double x1 = (B + sqrt(delta)) / (2 * A);
  double x2 = (B - sqrt(delta)) / (2 * A);

  if (delta < 0) {
    print('\nA equação não possui raizes reais!\n');
  } else if (delta == 0) {
    if (x1 >= 0) {
      print('\nA equção possui apenas uma raiz real: $x1\n');
    } else {
      print('\nA equção possui apenas uma raiz real: $x2\n');
    }
  } else {
    print('\nRaizes: \nX1: $x1\nX2: $x2\n');
  }
}
