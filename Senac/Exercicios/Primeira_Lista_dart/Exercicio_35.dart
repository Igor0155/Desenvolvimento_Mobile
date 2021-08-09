import 'dart:io';

main() {
  stdout.write('\nInsira um numero de 1 - 7: ');
  int code = int.parse(stdin.readLineSync()!);

  switch (code) {
    case 1:
      print('\n1 - Domingo\n');
      break;
    case 2:
      print('\n2 - Segunda\n');
      break;
    case 3:
      print('\n3 -Terça\n');
      break;
    case 4:
      print('\n4 - Quarta\n');
      break;
    case 5:
      print('\n5 - Quinta\n');
      break;
    case 6:
      print('\n6 - Sexta\n');
      break;
    case 7:
      print('\n7 - Sabado\n');
      break;
    default:
      print('\nCodigo invalido\n');
  }
}
