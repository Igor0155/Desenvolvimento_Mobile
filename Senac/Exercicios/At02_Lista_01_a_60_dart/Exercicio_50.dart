import 'dart:io';

main() {
  stdout.write('Insira a quantidade em Kg de Morango: ');
  double morango = double.parse(stdin.readLineSync()!);

  stdout.write('Insira a quantidade em Kg de maçãs: ');
  double maca = double.parse(stdin.readLineSync()!);

  fruteira(morango, maca);
}

fruteira(double kg_moran, double macas) {
  double preco = 0;

  if (kg_moran <= 5) {
    preco = 2.50;
  } else {
    preco = 2.20;
  }
  double preco_total_morango = preco * kg_moran;

  if (macas <= 5) {
    preco = 1.80;
  } else {
    preco = 1.50;
  }
  double preco_total_macas = preco * macas;

  double total_kg = macas + kg_moran;
  double total_preco = preco_total_macas + preco_total_morango;

  if (total_kg > 8 || total_preco > 25) {
    total_preco = total_preco - (total_preco * 0.1);
  }

  print('\nO preco dos morangos foi: R\$$preco_total_morango ');
  print('\nO preco das Maçãs foi: R\$$preco_total_macas');
  print('\nOvalor a ser pago e de: R\$$total_preco\n');
}
