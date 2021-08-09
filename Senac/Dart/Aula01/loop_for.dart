//Loop For
/**
 * O laço For é uma implementação de um loop definido. 
 * O loop for executa o bloco de código por um determinado número de vezes. 
 * Ele pode ser usado para iterar sobre um conjunto fixo de valores, 
 * como uma matriz.
 */

main() {

  int cont = 20;

  for (var i = 1; i < cont; i++) {
    print('Numero: $i');

    // interrupção
    if (i == 10) {
      print('\nLoop interrompido!');
      break; // pode usar continue
    }
  }

  print('_________________________________________\n');

  // varrendo em array
  var filmes = ['Matriz', 'Venom', 'deadpool', 'Miranha'];

  // loop 
  for (var filme in filmes) {
    
    print(filme);

  }


}
