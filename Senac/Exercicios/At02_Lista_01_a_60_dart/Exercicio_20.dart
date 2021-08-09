import 'dart:io';

main() {

  stdout.write('\nInforme o tamanho do arquivo em MB: ');
  double tamanho = double.parse(stdin.readLineSync()!);

  stdout.write('\nAgora informe a valocidade do link da internet em Mb: ');
  double velo = double.parse(stdin.readLineSync()!);

  double tempo = tamanho / (velo / 8);
  double min = tempo / 60;

  print('\nO tempo de download e de $min minutos\n');
  
}
