import 'dart:io';

main() {
  stdout.write('\nInsira o 1° numero: \n');
  double num1 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 2° numero: \n');
  double num2 = double.parse(stdin.readLineSync()!);

  stdout.write('\nInsira o 3° numero: \n');
  double num3 = double.parse(stdin.readLineSync()!);

  double aux = 0;
  double aux2 = 0;

if (num1 >= num2 && num1 >= num3){
    aux = num1;
}
else if (num2 >= num3){
    aux = num2;
}
else{
    aux = num3;
}
if (num1 <= num2 && num1 <= num3){
    aux2 = num1;
    }

else if (num2 <= num3){
    aux2 = num2;
    }

else{
    aux2 = num3;
    }
  print('\nO maior numero e o: $aux \n');
  print('\nO menor numero e o: $aux2 \n');
}
