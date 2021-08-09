main() {
  // estruturas de dados do tipo array
  var franquia = ['Odyssey', 'valhalla', 'Origins', 'Unity'];

  print("Franquia Assassin's Screed: $franquia ");

  print('Nome do primeiro jogo: ${franquia[0]}');
  print('Nome do segundo jogo: ${franquia[1]}');
  print('Nome do teceiro jogo: ${franquia[2]}');

  // Out of ranger: ERRO
  // print('nome do primeiro elemento: ${franquia[5]}');

  franquia[3] = 'AC III';

  // exibir array novamente
  print('Franquia: $franquia');

  // criando array numerico
  var pares = [0, 2, 4, 6];

  print('\n_______________________________________\n');
  print('Lista de numeros pares: $pares ');
  print('\n_______________________________________\n');

  // Metodos utilizados em arrays
  /**
   * first(): retorna o primeiro elemento do array
   * lart(): Retorna o ultimo elemento do array
   * isEmpty(): retorna true se alista esta vazia, caso contrario, retorna false
   * length(): retorna o tamanho do array
   */

  var nomes = ['Cris', 'Jack', 'ori', 'Scorpion', 'Subzero'];

  print('Primeiro nome: ${nomes.first}');
  print('Ultimo nome: ${nomes.last}');
  print('O array esta vazio? ${nomes.isEmpty}');
  print('Tamanho do Array: ${nomes.length}');
  print('\n_______________________________________\n');
}
