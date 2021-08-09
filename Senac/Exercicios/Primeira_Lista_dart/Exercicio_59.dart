import 'dart:io';

main() {

  stdout.write('Insira o numero maximo: ');
  int max = int.parse(stdin.readLineSync()!);

  int num_primos = 0, aux = 0;

  for (var i = 0; i <= max; i++) {
    num_primos = 0;

    for (var j = 1; j <= i; j++) {
      if (i % j == 0) {
        num_primos++;
      }
    }
    if (num_primos == 2) {
      print('$i');
      aux = 1;
    }
  }
    if (aux == 0) {
      print('\nNão tem numeros primos no intervalo de 0 a $max \n');
    }
  
}