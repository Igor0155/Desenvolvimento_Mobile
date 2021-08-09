import 'dart:io';

main() {
  stdout.write('\nInsira o 1° nota: \n');
  double nota1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° nota: \n');
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  if (media >= 7 && media < 10) {
    print('\nAprovado!\n');
  } else if (media < 7) {
    print('\nReprovado\n');
  } else if (media == 10) {
    print('\nAprovado com Distinção\n');
  }
}
