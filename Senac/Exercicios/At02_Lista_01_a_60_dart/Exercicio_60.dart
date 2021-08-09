import 'dart:io';

main() {
  stdout.write('Montar a taboada de: ');
  int num = int.parse(stdin.readLineSync()!);

  stdout.write('Começar por: ');
  int inicio = int.parse(stdin.readLineSync()!);

  stdout.write('Terminar em: ');
  int fim = int.parse(stdin.readLineSync()!);

  if (fim < inicio) {
    print('\nVocê digitou o final menor que o inicio\n');
  } else {
    print('');

    for (var i = inicio; i <= fim; i++) {
      int soma = num * i;

      print('$num X $i = $soma');
    }
    print('');
  }
}
