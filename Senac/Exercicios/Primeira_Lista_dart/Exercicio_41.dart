import 'dart:io';

main() {
  print('\nInsira a data no formato dd/mm/aaaa');

  stdout.write('\nInsira o dia: ');
  int dia = int.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o mês: ');
  int mes = int.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o ano: ');
  int ano = int.parse(stdin.readLineSync()!);

  verificacao(dia, mes, ano);
}

verificacao(int dia, int mes, int ano) {
  if (dia < 1 || dia > 31) {
    return print('a data está incorreta');
  } else if (mes < 1 || mes > 12) {
    return print('a data está incorreta');
  } else {
    return print('\nA data $dia/$mes/$ano esta correta\n');
  }
}
