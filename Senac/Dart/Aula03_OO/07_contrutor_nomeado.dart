//Outro exemplo
class Data {
  int dia; //Retirar o late por conta do Construtor curto
  String mes;
  int ano;

  //Contrutor Nomeado com Parâmetros nomeados
  Data.nomeada({this.dia = 0, this.mes = 'vazio', this.ano = 0}); //Não esqueça

  String exbirData() {
    return '$dia/$mes/$ano';
  }
  String toString() {
    return exbirData();
  }
}
main() {

  //Instanciando o objeto dataDia
  print(new Data.nomeada());
  
  print('Dia: ${Data.nomeada(dia: 10)}');
  print('mês: ${Data.nomeada(mes: 'Outubro')}');
  print('Ano: ${Data.nomeada(ano: 2000)}');
  print('Data completa: ${Data.nomeada(ano: 2000, mes: 'Outubro', dia: 10)}');

  print('/////////////Atribuição a uma variável///////////////////');
  //Atribuindo os valores a uma variável
  var dataPagamento = Data.nomeada(dia: 1, mes: 'Janeiro', ano: 2021);

  //Saída
  print(dataPagamento);
}