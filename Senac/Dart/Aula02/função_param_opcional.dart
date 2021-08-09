import 'dart:math';

main() {
  // declarar limite
  int num = sortearNumero(10);

  print('\nNumero sorteado foi: $num');

  /////////////////////////////////////////
  
  
  int valor1 = 10;
  int valor2 = 20;

  int soma = somaValores(valor1, valor2);

  print('\nO resultado dos valores somados: $soma');
}

// criar a função para sortear o numero
int sortearNumero([int limite = 3]) {
  // return random().nextInt(limite);
  return Random().nextInt(limite);
}

// 1 parametro obrigatorio e 2 parametro opcional 

int somaValores(int v1, [int v2 = 0]) {

  // se nao informar o valor 2
  // o parametro assume 0
  print('\nValor 1: $v1');
  print('Valor 2: $v2');

  return v1 + v2;
}
