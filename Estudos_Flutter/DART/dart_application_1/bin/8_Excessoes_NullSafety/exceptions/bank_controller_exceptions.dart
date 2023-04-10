//Verrificar Id do remetente é valido
class SenderIdInvalidException implements Exception {
  //Static: não precisa depender de uma instancia
  //const: constante(informação não muda)
  static const String report = 'SenderIdInvalidException';

  //pegar o id do user
  String idSender;

  //metodo construtor de uma class
  SenderIdInvalidException({required this.idSender});

  //sobreescrevendo o metodo ToString
  @override
  String toString() {
    return "$report\nID Sender: $idSender\n";
  }
}

//Verificar id do destinatario é valido
class ReceiverIdInvalidException implements Exception {
  //Static: não precisa depender de uma instancia
  //const: constante(informação não muda)
  static const String report = 'ReceiverIdInvalidException';

  //pegar o id do user
  String idReceiver;

  //metodo construtor de uma class
  ReceiverIdInvalidException({required this.idReceiver});

  //sobreescrevendo o metodo ToString
  @override
  String toString() {
    return "$report\nID Sender: $idReceiver\n";
  }
}

//verificar se o remetente está autenticado
class SenderNotAuthenticatedException implements Exception {
  //Static: não precisa depender de uma instancia
  //const: constante(informação não muda)
  static const String report = 'SenderNotAuthenticatedException';

  //para pegar a id do remetente não autenticado
  String isSender;

  SenderNotAuthenticatedException({required this.isSender});

  //sobreescrevendo o metodo ToString
  @override
  String toString() {
    return "$report\nID Sender: $isSender\n";
  }
}

// verificar se o remetente tem saldo suficiente
class SenderBalanceLowerThaAmountException implements Exception {
  //Static: não precisa depender de uma instancia
  //const: constante(informação não muda)
  static const String report = 'SenderBalanceLowerThaAmountException';
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThaAmountException({
    required this.idSender,
    required this.senderBalance,
    required this.amount,
  });

  //sobreescrevendo o metodo ToString
  // o @override mostra que está sobreescrevendo um metodo
  @override
  String toString() {
    return "$report\nID Sender: $idSender\nSender Balance $senderBalance\nAmount: $amount";
  }
}
