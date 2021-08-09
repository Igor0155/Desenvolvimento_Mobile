// Static e Final
// Nao precisar instanciar uma classe
// para acessar o atributo
// E Utilizado para guardar valores  em classes de configurações
// Essa forma de trabalhar tem um custo no consumo de recurso
// da sua aplicação

class Retangulo {
  static String cor = 'azul';
  static int contorno = 1;

  static meuSetup() {
    print('Configura cor...');
    print('Configura contorno...');
    print('Configura base...');
    print('Configura altura...');
  }
}

main() {
  // imprimindo os valores dos atributos diferentes
  // Retangulo ret1 = new Retangulo();

  print('A cor do retangulo é: ${Retangulo.cor}');
  print('O contorno do retangulo é: ${Retangulo.contorno}');

  // vizualizando o método
  Retangulo.meuSetup();
}
