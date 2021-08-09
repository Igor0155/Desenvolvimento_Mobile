import 'dart:io';

main() {
  print('Responda as perguntas com < 1 - Sim 0 - Nâo > ');
  stdout.write('Telefonou para a vítima? :');
  int P1 = int.parse(stdin.readLineSync()!);

  stdout.write('Esteve no local do crime?: ');
  int P2 = int.parse(stdin.readLineSync()!);

  stdout.write('Mora perto da vítima? :');
  int P3 = int.parse(stdin.readLineSync()!);

  stdout.write('Devia para a vítima?: ');
  int P4 = int.parse(stdin.readLineSync()!);

  stdout.write('Já trabalhou com a vítima?: ');
  int P5 = int.parse(stdin.readLineSync()!);

  int soma = P1 + P2 + P3 + P4 + P5;

  if (soma == 2) {
    print('\nSuspeita\n');
  } else if (soma >= 3 && soma <= 4) {
    print('\nCúmplice\n');
  } else if (soma == 5) {
    print('\nAssaassino\n');
  } else {
    print('\nInocente\n');
  }
}
