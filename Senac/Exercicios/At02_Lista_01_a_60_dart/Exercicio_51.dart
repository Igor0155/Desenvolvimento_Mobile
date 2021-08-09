import 'dart:io';

main() {
  stdout.write(
      'Insira o tipo de carne quedeseja levar:\n1 - File Duplo\n2 - Alcatra\n3 - Picanha\n::');
  int code = int.parse(stdin.readLineSync()!);

  stdout.write('Insira a quantidade em Kg de carne: ');
  double Kg = double.parse(stdin.readLineSync()!);

  stdout.write(
      'Insira o tipo de pagamento <1 -  dinheiro 2 - cartão Tabajara>: ');
  int pagamento = int.parse(stdin.readLineSync()!);

  switch (code) {
    case 1:
      carne_file(Kg, pagamento);
      break;
    case 2:
      carne_alcatra(Kg, pagamento);
      break;
    case 3:
      carne_picanha(Kg, pagamento);
      break;
    default:
      print('codigo errado\n');
  }
}

carne_file(double kilo, int pagamento) {
  double preco = 0;
  String tipo = '';
  double desconto = 0;
  double preco_total = 0;

  if (kilo <= 5) {
    preco = 4.90 * kilo;
  } else {
    preco = 5.80 * kilo;
  }

  if (pagamento == 2) {
    preco_total = preco - (preco * 0.05);
    tipo = 'Cartão Tabajara';
    desconto = 10;
  } else {
    tipo = 'Dinheiro';
    desconto = 0;
    preco_total = preco;
  }

  print('Tipo de carne: File Duplo');
  print('Quantidade: $kilo\Kg');
  print('Preço total: R\$$preco');
  print('Tipo de pagamento: $tipo');
  print('Valor do desconto: $desconto\%');
  print('Valor a pagar: R\$$preco_total');
}

carne_alcatra(double kilo, int pagamento) {
  double preco = 0;
  String tipo = '';
  double desconto = 0;
  double preco_total = 0;

  if (kilo <= 5) {
    preco = 5.90 * kilo;
  } else {
    preco = 6.80 * kilo;
  }

  if (pagamento == 2) {
    preco_total = preco - (preco * 0.05);
    tipo = 'Cartão Tabajara';
    desconto = 10;
  } else {
    tipo = 'Dinheiro';
    desconto = 0;
     preco_total = preco;
  }

  print('Tipo de carne: File Duplo');
  print('Quantidade: $kilo\Kg');
  print('Preço total: R\$$preco');
  print('Tipo de pagamento: $tipo');
  print('Valor do desconto: $desconto\%');
  print('Valor a pagar: R\$$preco_total');
}

carne_picanha(double kilo, int pagamento) {
  double preco = 0;
  String tipo = '';
  double desconto = 0;
  double preco_total = 0;

  if (kilo <= 5) {
    preco = 6.90 * kilo;
  } else {
    preco = 7.80 * kilo;
  }

  if (pagamento == 2) {
    preco_total = preco - (preco * 0.05);
    tipo = 'Cartão Tabajara';
    desconto = 10;
  } else {
    tipo = 'Dinheiro';
    desconto = 0;
    preco_total = preco;
  }

  print('Tipo de carne: File Duplo');
  print('Quantidade: $kilo\Kg');
  print('Preço total: R\$$preco');
  print('Tipo de pagamento: $tipo');
  print('Valor do desconto: $desconto\%');
  print('Valor a pagar: R\$$preco_total');
}
