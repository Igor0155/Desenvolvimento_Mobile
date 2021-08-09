import 'dart:io';

main() {
  stdout.write('Digite o valor do saque: ');
  int saque = int.parse(stdin.readLineSync()!);

  caixa_eletronico(saque);
}

caixa_eletronico(int saque) {
  int cem, cinquenta, dez, cinco, um;

  int aux = saque;

  cem = (saque ~/ 100);
  saque = (saque - (cem * 100));

  cinquenta = (saque ~/ 50);
  saque = (saque - (cinquenta * 50));

  dez = (saque ~/ 10);
  saque = (saque - (dez * 10));

  cinco = (saque ~/ 5);
  saque = (saque - (cinco * 5));

  um = saque;

  print('Para sacar a quantia de $aux reais,');
  print('o programa fornece: ');
  print('$cem notas de 100 reais');
  print('$cinquenta notas de 50 reais');
  print('$dez notas de 10 reais');
  print('$cinco notas de 5 reais');
  print('$um notas de 1 reais');
}
