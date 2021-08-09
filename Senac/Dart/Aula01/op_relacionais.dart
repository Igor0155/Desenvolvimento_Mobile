main() {
    
  // Operadores Relacionais
  /**
  *  == , != 
  *  > , < 
  *  >= , <= 
  *  /
 */
  // Declarando variaveis
  int a = 20;
  int b = 5;

  // varificando a saida
  print('\n$a = $b Resultado: ${a == b}');

  print('\n$a ≠ $b Resultado: ${a != b}');

  print('\n$a > $b Resultado: ${a > b}');

  print('\n$a < $b Resultado: ${a < b}');

  print('\n$a ≥ $b Resultado: ${a >= b}');

  print('\n$a ≤ $b Resultado: ${a <= b}');

  // colocando o resultado booleano em uma variavel
  bool igual = a == b;

  print('\nverificação de iguadade: $igual');
}
