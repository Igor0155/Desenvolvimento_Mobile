import 'dart:io';

main() {
  stdout.write('\nInsira quantos metros quadrados deseja pintar: ');
  double metros = double.parse(stdin.readLineSync()!);

  if (metros <= 54) {
    
    print('\nVocê ira precisar de 1 lata de tinta!\n');

  } 
  else {

    double litros = (metros / 3);
    int latas = (litros / 18).round();
    double valor = latas * 80;

    print('\nVocê ira precisar de ${latas} Latas e vai custar R\$${valor.toStringAsFixed(2)}\n');
  }
}
