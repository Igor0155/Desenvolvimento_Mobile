// loop while
/**
 * o loop while executa as intrucoes cada vez que a 
 * condição especiicada e avaliada comoverdadeir. Em outras palavras 
 * o loop avalia a condição antes que o bloco de codigo seja executado 
 */
main() {
// declaracação de variaveis
  int cont = 0;

  while (cont <= 20) {
    print('Numero: $cont');

    // incrementando
    cont++;
    if (cont == 10) {
      print('Loop interrompido!');
      break; //podemos usar o continue tambem
    }
  }
}
