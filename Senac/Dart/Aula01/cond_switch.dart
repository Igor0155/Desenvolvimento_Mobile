main() {
  // exibição do menu
  print('1 - Numero par');
  print('2 - Numero impar');
  print('3 - Sair\n');

  // declaração de variaveis
  int op = 1;

  // condicional
  switch (op) {
    case 1:
      // declaracao
      int num = 10;

      // condiçao parou impar
      if (num % 2 == 0) {
        print('O numero $num é par!');
      } else {
        print('O numero $num é ímpar!');
      }
      break;

    case 2:
      // declaração
      int a = 3;
      int b = 3;

      if (a > b) {
        print('O numero $a e maior que onumero $b!');
      } else if (a < b) {
        print('O numero $a e menor que onumero $b!');
      } else {
        print('Os numeros sao iguais!');
      }
      
      break;

    default:
      print('opção invalida!');
  }
}
