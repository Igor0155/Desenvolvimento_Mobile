import 'dart:io';

main() {

  stdout.write('\nInsira um numero: ');
  
  double num = double.parse(stdin.readLineSync()!);

  print('O numero informado foi: $num\n');
  
}
