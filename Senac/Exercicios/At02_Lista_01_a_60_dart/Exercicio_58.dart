import 'dart:io';

main() {
  int resultado = 0;

  stdout.write('Insira o numero: ');
  double num = double.parse(stdin.readLineSync()!);

  for (var i = 2; i <= num / 2; i++) {
    if (num % i == 0) {
      resultado++;
      break;
    }
  }
  if (resultado == 0) {
    print('\nO numero $num e primo! \n');
  } else {
    print('\nO numero $num nao e primo\n');
  }
}
