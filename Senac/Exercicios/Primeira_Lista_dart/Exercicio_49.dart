import 'dart:io';

main() {
  stdout.write('Insira Quantos litros de combustivel deseja colocar: ');
  double litros = double.parse(stdin.readLineSync()!);

  stdout.write(
      'Insira o tipo de combustivel desejada: \n1 - Álcool\n2 - Gasolina\n:: ');
  int code = int.parse(stdin.readLineSync()!);

  switch (code) {
    case 1:
      alcool(litros);
      break;
    case 2:
      gasolina(litros);
      break;
    default:
  }
}

alcool(double litro) {
  double preco = 1.90;
  double total = preco * litro;
  if (litro <= 20) {
    total = total - (total * 0.03);
  }
  else if (litro > 20){
    total = total - (total * 0.05);
  }

  print('O valor a ser pago de $litro\l de alcool e: \$$total reais');
}

gasolina(double litro) {
  double preco = 2.50;
  double total = preco * litro;
  
   if (litro <= 20) {
    total = total - (total * 0.04);
  }
  else if (litro > 20){
    total = total - (total * 0.06);
  }

  print('O valor a ser pago de $litro\l de gasolina e: \$$total reais');
}
