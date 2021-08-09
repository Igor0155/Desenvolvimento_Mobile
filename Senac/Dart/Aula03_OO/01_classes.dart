// Para criar uma classe usamos inicial maiusculo

class Casa {
  // Criar os atributos
  // Os atributos definem uma classe
  String cor = '';
  int quantidade_janela = 0;
  int numero = 0;

  // Criando metodos
  // metodos sao açoes que podem ser realizadas com nossas classes
  void abrir_janela(String posicao) {
    print('Abrindo a janela... $posicao');
  }

  void fechar_janela(String posicao) {
    print('Fechando a janela... $posicao');
  }
}

main() {
  // Definindo  minha classe
  // A casa do john e uma instacia de casa
  // ou seja uma copia do modelo oriinal casa()
  // Assim casa do john e um objeto de casa().

  Casa casa_do_john = new Casa();

  // tendo  construido um objeto casa_do_john
  // podemos colocar valores em seus atributos
  casa_do_john.cor = 'Marrom';
  casa_do_john.quantidade_janela = 5;
  casa_do_john.numero = 1970;

  // Saida
  // Acessando o metodo abrirJanela()
  // E preciso o objeto para fazer uso não so de atributos, mas de metodos tambem
 
  casa_do_john.abrir_janela('Frente!');
  print('\nA casa do john é: ${casa_do_john.cor}');
  print('\nA casa do john tem: ${casa_do_john.quantidade_janela} de janelas');
  print('\nO numero da casa do john é: ${casa_do_john.numero}\n');
  // Acessando metodo fechar_janela()
  casa_do_john.fechar_janela('Fundos!');

  // a vantagem de utilizar classes e que podemos ter varias instancias
  // dessa mesma classe
  // entao agora posso criar a casa doa Jane tambem, ai ninguem briga :)
  Casa casa_jane = new Casa();

  casa_jane.cor = 'Verde';
  casa_jane.quantidade_janela = 10;
  casa_jane.numero = 2000;

  // Saida para os dados da casa_jane
  casa_jane.abrir_janela('Frente!');
  print('\nA casa da jane é: ${casa_jane.cor}');
  print('\nA casa da jane tem: ${casa_jane.quantidade_janela} de janelas');
  print('\nO numero da casa da jane é: ${casa_jane.numero}\n');
}
