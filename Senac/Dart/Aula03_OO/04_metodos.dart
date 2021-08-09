//Outro exemplo
class Data {
  //Colocamos o LATE para dizer ao dart que o atributo vai ser
  //inicializado futuramente - NÃO É LEGAL, POIS VOCÊ PODE NÃO INICIÁ-LO
  late int dia;
  late String mes;
  late int ano;

  //Criar método
  //Métodos são os comportamentos que uma classe pode ter
  String exibirData() {
    //Exibir data formatada
    //Essa colocação é inútil, pois não podemos manipular a data
    return '$dia/$mes/$ano';
  }

  //Método sobrecarregado
  String toString() {
    //Vai retornar nosso método anterior
    //convertendo em String
    return exibirData();
  }
}

main() {
  //Criando as instância da classe Data()
  Data data = new Data();
  Data dataPedido = new Data();
  Data dataSaida = new Data();

  //Inicializando a data
  data.dia = 20;
  data.mes = 'Janeiro';
  data.ano = 1970;

  dataPedido.dia = 20;
  dataPedido.mes = 'Março';
  dataPedido.ano = 2015;

  dataSaida.dia = 29;
  dataSaida.mes = 'Dezembro';
  dataSaida.ano = 2020;

  //Nova Saída
  //Cada uma das instâncias vai receber o comportamento do método exibirData()
  //Muito Prático
  String data1 = data.exibirData();
  String data2 = dataPedido.exibirData();
  String data3 = dataSaida.exibirData();

  //Saída
  print('Data atual: $data1');
  print('Data atual: $data2');
  print('Data atual: $data3');

  //Saída pelo método toString()
  print('---------------------------------------------');
  print(data);
  print(dataPedido);
  print(dataSaida);
}