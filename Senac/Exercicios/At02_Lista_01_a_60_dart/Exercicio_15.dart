import 'dart:io';

import 'dart:math';

main() {
  print('\nInsira o seu peso: ');
  double peso = double.parse(stdin.readLineSync()!);

  print('\nInsira a sua altura: ');
  double altura = double.parse(stdin.readLineSync()!);

  double imc = peso / pow(altura, 2);

  if (imc < 18.5) {
    print('\nIMC = $imc Classificação Magresa\n');
  }

  else if (imc >= 18.5 && imc <= 24.9) {

    print('\nIMC = $imc Classificação Normal\n');
  }

  else if (imc >= 25 && imc <= 29.9) {
    print('\nIMC = $imc Classificação Sobrepesso\n');
  }

  else if (imc >= 30 && imc <= 39.9) {
    print('\nIMC = $imc Classificação Obesidade\n');
  }

  else if (imc >= 40) {
    print('\nIMC = $imc Classificação Obesidade Grave\n');
  }

  
}
