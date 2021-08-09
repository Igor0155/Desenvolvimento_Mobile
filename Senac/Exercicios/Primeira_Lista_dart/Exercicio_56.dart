import 'dart:io';

main() {
  stdout.write('Insira um numero inteiro para o calculo do fatorial: ');
  int num = int.parse(stdin.readLineSync()!);

  int fat = 0;

  for (fat = 1; num > 1; num--) {
    fat = fat * num;
    
  }
  print('O fatorial calculado foi: $fat');
}