main() {
  // operadores logicos
  /**
   * && (E) | Verd && Verd == Verd
   * || (ou) F || F == F
   * ! Negação
   */

  // declarando variaveis
  int a = 20;
  int b = 5;
  int c = 7;

  // verificando verdadeiro
  bool pro1 = a > b;
  bool pro2 = b < c;

  // saida
  //        V          V
  print('\n$a > $b && $b < $c - Resposta: ${pro1 && pro2}');
  //        V          F
  print('\n$a > $b || $b > $c - Resposta: ${pro1 || pro2}');

  // verificando o falso
  bool pro3 = a < b;
  bool pro4 = b > c;

  print('\n$a < $b && $b > $c - Resposta: ${pro3 && pro3}');
  print('\n$a > $b || $b > $c - Resposta: ${pro4 || pro4}');

  // negação
  bool v = true;
  bool f = false;

  print('\nNegando o V: ${!v}');
  print('\nNegando o F: ${!f}');
}
