class Data {
  late int dia;
  late String mes;
  late int ano;

  //Criando um construtor
  //Se não criar, a linguagem vai criar um padrão
  //Ele tem o mesmo nome da Classe
  //Só posso ter um com o mesmo nome da Classe
  //Colocamos parâmetros para receber os valores
  Data(int diaCorrente, String mesCorrente, int anoCorrente) {
    //Atribuições
    dia = diaCorrente;
    mes = mesCorrente;
    ano = anoCorrente;
  }

  String exbirData() {
    //Exibir data formatada
    //Essa colocação é inútil, pois não podemos manipular a data
    return '$dia/$mes/$ano';
  }

  String toString() {
    //Vai retornar nosso método anterior
    //convertendo em String
    return exbirData();
  }
}

main() {
  //Criando uma data (3 INSTâNCIAS)
  Data data = new Data(3, 'Janeiro', 1970);
  Data dataPedido = new Data(20, 'Março', 2015);
  Data dataSaida = new Data(29, 'Dezembro', 2020);

  //Atribuições
  String data1 = data.exbirData();
  String data2 = dataPedido.exbirData();
  String data3 = dataSaida.exbirData();

  print('Data atual: $data1');
  print('Data da realização do pedido: $data2');
  print('Data de saída do pedido: $data3');
  
}