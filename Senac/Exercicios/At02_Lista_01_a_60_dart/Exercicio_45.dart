import 'dart:io';

main() {
  stdout.write('Insira o numero: ');
  int num = int.parse(stdin.readLineSync()!);

  Verificacao_impar_par(num);
}

Verificacao_impar_par(int numero) {

  if (numero != 0) {
    if (numero % 2 == 1) {
      print('\nO numero: $numero é impar\n');
    } else {
      print('\nO numero: $numero é par\n');
    }
  }
}
