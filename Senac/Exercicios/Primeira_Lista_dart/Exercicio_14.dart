import 'dart:io';

main() {

  stdout.write('\nInsira a sua altura: ');

  double altura = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o seu sexo <1 - Masculino> <2 - Feminino>: ');

  int sexo = int.parse(stdin.readLineSync()!);

  switch (sexo){
    case 1:

      print('\nO seu peso ideal e de: ${(72.7 * altura) - 58}\n');

      break;
    case 2:

      print('\nO seu peso ideal e de: ${(62.1 * altura) - 44.7}\n');

      break;
      
    default:
      print('\nopção invalida!\n');
  }

  
}
