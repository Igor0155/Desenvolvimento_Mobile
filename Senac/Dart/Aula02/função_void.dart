import 'dart:io';

main() {

  mostrarNome();
  linha();

  // entranda de dados
  // implementação depois do null safe
  // String nome = stdin.readLineSync()!;

  // input com float
  stdout.write('\nEntre com o primeiro valor: ');
  double valor1 = double.parse(stdin.readLineSync()!);

  // input com int
  // stdout.write('\nEntre com o segundo valor: ');
  // int valor2 = int.parse(stdin.readLineSync()!);
  
  stdout.write('\nEntre com o segundo valor: ');
  double valor2 = double.parse(stdin.readLineSync()!);
 
 // input com String
  stdout.write('\nInsira o operador: ');
  String operator = stdin.readLineSync()!;

  calcularValore(operator, valor1, valor2);



}

// criar função
void mostrarNome() {
  print('\nArthur Morgan');
}

// função linha
void linha() {
  print('__________________________\n');
}

// calcular valores
void calcularValore(String op, double a, double b) {
  
  // condicional
  if (op == '+') {
    
    double soma = a + b;
    print('\nOperador \"$op\" a soma de $a + $b = $soma\n');
  }

  else if (op == '-') {

    double subt = a - b;
    print('\nOperador \"$op\" a subtração de $a - $b = $subt\n');
  }

  else if (op == '*') {

    double mult = a * b;
    print('\nOperador \"$op\" a multiplicação de $a * $b = $mult\n');
  }

  else if (op == '/') {

    double div = a / b;
    print('\nOperador \"$op\" a divisao de $a / $b = $div\n');
  }

}
