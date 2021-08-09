class Conta {
  Cliente cliente;
  String nome_banco;
  int agencia;
  int codigo;
  double saldo;

  Conta(
      {required this.cliente,
      required this.nome_banco,
      required this.agencia,
      required this.codigo,
      this.saldo = 5000.0});
}

class Cliente {
  String nome_Cliente;
  String cpf; //999.999.999-99
  String celular;

  Cliente(
      {required this.nome_Cliente, required this.cpf, required this.celular});
}

main() {
  var conta1 = new Conta(

      // composição
      nome_banco: 'Banco do Brasil',
      agencia: 1226,
      codigo: 017,
      cliente: Cliente(
          nome_Cliente: 'Arthur morgan',
          cpf: '123.456.789-25',
          celular: '(32) 9 9999-9999'
      )
  );

  print('=====================================');
  print('DADOS BANCÁRIOS');
  print('-------------------------------------');
  print('Nome do banco: ${conta1.nome_banco}');
  print('Agência Bancária: ${conta1.agencia}');
  print('Nome do cliente: ${conta1.cliente.nome_Cliente}');
  print('CPF do cliente: ${conta1.cliente.cpf}');
  print('Saldo em conta: ${conta1.saldo}');
  print('-------------------------------------');
}
