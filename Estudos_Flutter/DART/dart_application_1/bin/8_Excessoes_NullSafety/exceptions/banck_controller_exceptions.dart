//Verrificar Id do remetente é valido
class SenderIdInvalidException implements Exception {
  //pegar o id do user
  String idSender;

  //metodo construtor de uma class
  SenderIdInvalidException({required this.idSender});
}

//Verificar id do destinatario é valido
class ReceiverIdInvalidException implements Exception {
  //pegar o id do user
  String idReceiver;

  //metodo construtor de uma class
  ReceiverIdInvalidException({required this.idReceiver});
}

//verificar se o remetente está autenticado
class SenderNotAuthenticatedException implements Exception {
  //para pegar a id do remetente não autenticado
  String isSender;

  SenderNotAuthenticatedException({required this.isSender});
}

// verificar se o remetente tem saldo suficiente
class SenderBalanceLowerThaAmountException implements Exception {
  String idSender;
  double senderBalance;
  double amount;

  SenderBalanceLowerThaAmountException({
    required this.idSender,
    required this.senderBalance,
    required this.amount,
  });
}
