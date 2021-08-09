main() {
  // operadores aritmedicos
  // *,+,-,/,%

  // declarando variaveis
  int a = 20;
  int b = 5;

  // Operadores
  var soma = a + b;
  var subt = a - b;
  var produto = a * b;
  var div = a / b;
  var restoDiv = a % b;

  // Saida
  print('A soma de $a + $b = $soma');
  print('A subtração de $a - $b = $subt');
  print('O produto de $a * $b = $produto');
  print('A divisão de $a / $b = $div');
  print('O resto da divisão de $a % $b = $restoDiv');

  // operadores resumidos
  int num = 100;

  //pode ser *= ou /= ou += ou -=
  num += 20;
  num -= 10;

  print('Número: $num');
}
