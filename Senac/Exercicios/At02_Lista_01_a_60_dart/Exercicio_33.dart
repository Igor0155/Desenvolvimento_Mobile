import 'dart:io';

main() {

  stdout.write('\nInsira o seu salario: \n');
  double salario = double.parse(stdin.readLineSync()!);

  double aumento = 0;
  double novo_salario = 0;
  double aux = 0;

  if (salario <= 280) {
    aumento = salario * 0.2;
    novo_salario = salario + aumento;
    aux = 20;
  }

  else if(salario >280 && salario <= 700){
    aumento = salario * 0.15;
    novo_salario = salario + aumento;
    aux = 15;
  }

  else if(salario >700 && salario <= 1500){
    aumento = salario * 0.1;
    novo_salario = salario + aumento;
    aux = 10;
  }

  else if(salario > 1500){
    aumento = salario * 0.05;
    novo_salario = salario + aumento;
    aux = 5;
  }
  
  print('\nSalario inicial: R\$$salario\nPercentual de aumento apicado: $aux\%');
  print('Valor do aumento: R\$$aumento\nNovo Salario: R\$$novo_salario\n');
  
}
