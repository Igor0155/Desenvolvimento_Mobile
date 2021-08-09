// Exercicio_21.dart

import 'dart:io';

main() {
  stdout.write('\nInsira o numero de habitantes da cidade: \n');
  int habitantes = int.parse(stdin.readLineSync()!);

  double salario = 0.0;
  double salario_maior = 0.0;
  int filhos = 0;
  int pessoa = 0;
  int percentual_pessoas_sal_menor = 0;

  for (var i = 1; i <= habitantes; i++) {
    stdout.write('\nInsira o salario da $i pessoa: \n');

    double salario_input = double.parse(stdin.readLineSync()!);

    salario += salario_input;

    stdout.write('\nInsira a quantidade de filhos da $i pessoa: \n');

    filhos += int.parse(stdin.readLineSync()!);
    if (salario_input < 150) {
      // salario_menor = salario_input;
      percentual_pessoas_sal_menor += 1 ;
    } 
    else if (salario_maior <= salario_input) {
      salario_maior = salario_input;
      pessoa = i;
    }

    double media_salario = salario / habitantes;
    double media_filhos = filhos / habitantes;

    // double media_filhos = filhos / habitantes;

    if (i == habitantes) {
      print('\nMedia salario = $media_salario');
      print('\nMedia filhos = $media_filhos');
      print('\nMaior salario foi de = $salario_maior da $pessoa pessoa');
      print('\nQuantiade de pessoas com salario menor que R\$150 e: $percentual_pessoas_sal_menor Pessoas\n');
    }
  }
}
