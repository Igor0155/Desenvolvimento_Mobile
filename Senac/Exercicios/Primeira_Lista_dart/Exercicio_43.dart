import 'dart:io';

main() {
  stdout.write('\nInsira a 1° nota: ');
  double nota_1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira a 2° nota: ');
  double nota_2 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira a 3° nota: ');
  double nota_3 = double.parse(stdin.readLineSync()!);

  media_aluno(nota_1, nota_2, nota_3);

}

void media_aluno(double nota1, double nota2, double nota3) {
  double media =( nota1 + nota2 + nota3) / 3;

  if (media >= 7) {
     return print('\nAprovado\n');
  } else if (media < 7) {
    return print('\nReprovado\n');
  } else if (media == 10) {
    return print('\nAprovado com Distinção\n');
  }
}
