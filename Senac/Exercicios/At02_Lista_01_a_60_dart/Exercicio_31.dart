import 'dart:io';

main() {
  stdout.write(
      '\nInsira que turno você estuda:\nM - Matutino\nV - Vespertino\nN- Noturno\n: ');
  String mensagem = stdin.readLineSync()!;

  switch (mensagem.toUpperCase()) {
    case 'M':
      print('\nBom Dia\n');
      break;
    case 'V':
      print('\nBoa Tarde\n');
      break;
    case 'N':
      print('\nBoa Noite\n');
      break;
    default:
      print('\nValor inválido\n');
  }
}
