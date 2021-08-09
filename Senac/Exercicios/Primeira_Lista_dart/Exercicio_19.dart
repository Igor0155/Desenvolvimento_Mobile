import 'dart:io';

main() {
  stdout.write('\nInforme a area a ser pintada em m²\n');
  double area = double.parse(stdin.readLineSync()!);

  stdout.write('\nDeseja comprar Latas ou Galoes?\n');
  String code = stdin.readLineSync()!;

  switch (code.toUpperCase()) {
    case 'LATAS':
      calculo_latas(area);
      break;
    case 'GALOES':
      calculo_galoes(area);
      break;
    default:
  }
  //
}

void calculo_galoes(double area) {
  if (area <= 21.6) {
    print('\nVocê ira precisar de 1 galao de 3,6Litros\n');
  } else if (area > 21.6) {
    double litros = area / 6;
    double latas = litros / 3.6;
    double valor = (latas.roundToDouble()) * 25;

    print(
        '\nVocê vai precisar de ${latas.roundToDouble()} Galões \nVai custar R\$${valor.toStringAsFixed(2)}\n');
  }
}

void calculo_latas(double area) {
  if (area <= 108) {
    print('\nVocê ira precisar de 1 lata de 18Litros\nVai custar: R\$80.0');
  } else if (area > 108) {
    double litros = area / 6;
    double latas = litros / 18;
    double valor = (latas.roundToDouble()) * 80;

    print(
        '\nVocê vai precisar de ${latas.roundToDouble()} latas \nVai custar R\$${valor.toStringAsFixed(2)}\n');
  }
}
