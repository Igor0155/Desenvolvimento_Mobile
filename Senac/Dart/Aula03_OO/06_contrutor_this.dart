class Data {
  /*Null-safe
  int? variavel1 = 1; //Pode ser null mais tarde
  String? variavel2; //É null no início. Pode também ser null mais tarde!
  */
  int dia;
  String mes;
  int ano;
  /*
  Data(int dia, String mes, int ano) {
    //This representa o objeto da classe atual
    this.dia = dia;
    this.mes = mes;
    this.ano = ano;
  }*/
  //construtor com parâmetros opcionais
  Data([this.dia = 0, this.mes = 'vazio', this.ano = 0]); //Não esqueça

   String exbirData() {
    return '$dia/$mes/$ano';
  }

  String toString() {
    return exbirData();
  }
}

main() {
  //Criando uma data (3 INSTâNCIAS)
  Data data = new Data(3, 'Janeiro', 1970);
  Data dataPedido = new Data(20, 'Março', 2015);
  Data dataSaida = new Data(29, 'Dezembro', 2020);

  //Cada uma das instâncias vai receber o omportamento do método exibirData
  //Muito Prático
  String data1 = data.exbirData();
  String data2 = dataPedido.exbirData();
  String data3 = dataSaida.exbirData();

  print('Data atual: $data1');
  print('Data da realização Pedido: $data2');
  print('Data da Saída do Pedido: $data3');

  //Saída pelo método toString
  print('------------------------------------------------');
  //Imprimindo diretamente o objeto!
  print(data);
  print(dataPedido);
  print(dataSaida);

  //Novas datas com com parâmetros opcionais no construtor
  Data dataOpcional = new Data();
  print('-------------------------------------------------');
  print(dataOpcional);
  print(
      '${dataOpcional.dia = 10}/${dataOpcional.mes = 
      'Outubro'}/${dataOpcional.ano = 2010}');
}