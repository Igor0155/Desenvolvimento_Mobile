import 'dart:io';

main() {
  stdout.write('Insira o numero: ');
  double num = double.parse(stdin.readLineSync()!);

  inteiro_decimal(num);
  
}

inteiro_decimal(double num) {

  int num1 = num.round(); 

  if (num1 == num) {
    print('o numero e inteiro');
  } else {
    print('O numero e decimal');
  }
}