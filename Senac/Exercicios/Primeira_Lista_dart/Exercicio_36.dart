import 'dart:io';

main() {
  stdout.write('\nInsira o 1° nota: \n');
  double nota1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° nota: \n');
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  String conceito = '';

  if (media > 9.0 && media <= 10.0) {
    conceito = 'Aprovado';
  } else if (media > 7.5 && media <= 9.0) {
    conceito = 'Aprovado';
  } else if (media > 6.0 && media <= 7.5) {
    conceito = 'Aprovado';
  } else if (media > 4.0 && media <= 6.0) {
    conceito = 'Reprovado';
  } else if (media >= 0.0 && media <= 4.0) {
    conceito = 'Reprovado';
  }

  print('\nAs notas do aluno foi $nota1 : $nota2 \nMedia: $media\n');
  print('Conceito final: $conceito\n');
}
