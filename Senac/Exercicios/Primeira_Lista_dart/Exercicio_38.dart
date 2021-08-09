import 'dart:io';

main() {
  stdout.write('\nInsira o 1° Lado do triangulo: ');
  double Lado_1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° Lado do triangulo: ');
  double Lado_2 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° Lado do triangulo: ');
  double Lado_3 = double.parse(stdin.readLineSync()!);

  if (Lado_1 + Lado_2 > Lado_3) {
    Triangulos(Lado_1, Lado_2, Lado_3);
  } else {
    print('\nOs lados inseridos não formam um triângulo\n');
  }
}

Triangulos(double l1, double l2, double l3) {
  if (l1 == l2 && l2 == l3) {
    print('\nO triâgulo é Equilátero\n');
  } else if (l1 == l2 || l1 == l3 || l2 == l3) {
    print('\nO triâgulo é Isósceles\n');
  } else if (l1 != l2 && l2 != l3) {
    print('\nO triâgulo é Escaleno\n');
  }
}
