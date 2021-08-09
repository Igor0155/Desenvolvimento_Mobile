// Final
class Conta {
  String banco;
  int? numero;
  double agencia;

  Conta({this.numero, required this.agencia, required this.banco});
}

main() {
  // Final: modificador qua dá exclusiidade a sua instância
  final Conta conta1 = new Conta(agencia: 1226, numero: 12345, banco: 'BB');

  print(conta1.banco);
  print(conta1.agencia);
  print(conta1.numero);


  // Não funciona!!!!!!!!!!!!!!!!! 
  // conta1 = Conta(agencia: 6585, banco: 'Itau');
  // conta1 = Conta(agencia: 1479, banco: 'Bradesco');
}
