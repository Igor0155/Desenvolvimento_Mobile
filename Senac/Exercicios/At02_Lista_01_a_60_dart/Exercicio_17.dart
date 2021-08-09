import 'dart:io';

main() {
  stdout.write('\nInsira quanto você ganha por hora: ');
  double hora = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira a quantidade de horas trabalhadas no mes: ');
  double mes = double.parse(stdin.readLineSync()!);

  double salario = hora * mes;

  print('\nSalario bruto = R\$$salario');

  print('\nPagou de IR: R\$${(salario * 0.11)}');
  print('\nPagou de INSS: R\$${(salario * 0.08)}');
  print('\nPagou de Sindicato: R\$${(salario * 0.05)}');

  double desconto = 0.11 + 0.08 + 0.05;
  salario = salario - (salario * desconto);
  print('\nSalario liquido = R\$$salario\n');
}
