import 'dart:io';

main() {
  stdout.write('\nInsira F - Feminino ou M - Masculono: \n');
  String letra = stdin.readLineSync()!;

  if (letra == 'F' || letra == 'f') {
    print('Letra digitada F ($letra)');
  } else if (letra == 'M' || letra == 'm') {
    print('Letra digitada M ($letra)');
  }
}
