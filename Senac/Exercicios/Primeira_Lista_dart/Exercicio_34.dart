import 'dart:io';

main() {
  stdout.write('\nInsira quanto ganha por hora: \n');
  double horas = double.parse(stdin.readLineSync()!);

  stdout.write('\nQuantas horas vc trabalha por mes: \n');
  double mes = double.parse(stdin.readLineSync()!);

  double bruto = horas * mes;

  late var IR;
  late var aux;

  print('\nSalario Bruto ($horas + $mes)    :R\$ $bruto');

  if (bruto <= 900) {
    IR = 0;
    var aux2 = 'inseto';
    aux = 0;
    print('(-) IR ($aux%)                    :R\$ $aux2');

  } 
  else if (bruto > 900 && bruto <= 1500) {
  
    IR = bruto * 0.05;
    aux = 5;
    print('(-) IR ($aux%)                    :R\$ $IR');

  } 
  else if (bruto > 1500 && bruto <= 2500) {
    
    IR = bruto * 0.1;
    aux = 10;
    print('(-) IR ($aux%)                    :R\$ $IR');

  } 
  else if (bruto > 2500) {
    IR = bruto * 0.2;
    aux = 20;
    print('(-) IR ($aux%)                    :R\$ $IR');

  }

  double inss = bruto * 0.1;

  double fgts = bruto * 0.11;

  double descontos = IR + inss;

  double salario_liquido = bruto - descontos;

  print('(-) INSS (10%)                 :R\$ $inss');
  print(' FGTS (11%)                    :R\$ $fgts\n');
  print('Total de descontos             :R\$ $descontos');
  print('Salario liquido                :R\$ $salario_liquido\n');
}
