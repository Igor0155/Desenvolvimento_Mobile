// Outro exemplo
class Data {
  // colocamos o LATE para dizer ao darte qiue o atributo vai ser
  // inicializado futuramente - NAO E LEGAL, POIS VOCE PODE NAO INICIA-LO
  late int dia;
  late String mes;
  late int ano;
}

main() {
  // ciando instancias de data()
  Data data = new Data();
  Data dataPedido = new Data();
  Data dataSaida = new Data();

  // inicializando a data
  data.dia = 20;
  data.mes = 'Maio';
  data.ano = 2021;

  dataPedido.dia = 20;
  dataPedido.mes = 'março';
  dataPedido.ano = 2010;

  dataSaida.dia = 10;
  dataSaida.mes = 'Agosto';
  dataSaida.ano = 2015;

  print('\nMostrar data: ${data.dia}/${data.mes}/${data.ano}');
  print('\nMostrar data: ${dataPedido.dia}/${dataPedido.mes}/${dataPedido.ano}');
  print('\nMostrar data: ${dataSaida.dia}/${dataSaida.mes}/${dataSaida.ano}');
}
