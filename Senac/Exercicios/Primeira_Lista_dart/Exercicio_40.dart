import 'dart:io';

main() {
  stdout.write('\nInsira o ano: \n');
  int ano = int.parse(stdin.readLineSync()!);

  ano_bissexto(ano);
}

ano_bissexto(int ano) {
  double result = ano % 4;

  if (result == 0) {
    result = ano % 100;
    if (result == 0) {
      result = ano % 400;
      if (result == 0) {
        print('\nO ano é bissexto (tem 366 dias).\n\n');
      } else {
        print('\nO ano não é um ano bissexto (tem 365 dias).\n\n');
      }
    } else {
      print('\nO ano é bissexto (tem 366 dias).\n\n');
    }
  } else {
    print('\nO ano não é um ano bissexto (tem 365 dias).\n\n');
  }
}
