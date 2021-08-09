import 'dart:io';

main() {

  stdout.write('\nInsira a quantidade de metros: ');
  
  double metros = double.parse(stdin.readLineSync()!);

  print('\n$metros m é: ${metros * 100}cm\n');
}
