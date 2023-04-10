import 'package:test/expect.dart';

import '../exceptions/bank_controller_exceptions.dart';
import '../models/account.dart';

class BankController {
  final Map<String, Account> _database = {};

  addAccount({required String id, required Account account}) {
    _database[id] = account;
  }

  bool makeTransfer(
      {required String idSender,
      required String idReceiver,
      required double amount}) {
    // Verificar se o ID de rementente é valido
    // "THROW" para a execução, tira a func da pilha e
    //manda para quem tiver que tratar essa exceção
    if (!verifyId(idSender)) {
      throw SenderIdInvalidException(idSender: idSender);
    }
    // Verificar se o ID de destinatario é valido
    if (!verifyId(idReceiver)) {
      throw ReceiverIdInvalidException(idReceiver: idReceiver);
    }

    Account accountSender = _database[idSender]!;

    Account accountReceiver = _database[idReceiver]!;

    // Verificar se o remetente está autenticado
    if (!accountSender.isAuthenticated) {
      throw SenderNotAuthenticatedException(isSender: idSender);
    }

    // verificar se o remetete possui saldo sufuciente
    if (accountSender.balance < amount) {
      throw SenderBalanceLowerThaAmountException(
          idSender: idSender,
          senderBalance: accountSender.balance,
          amount: amount);
    }

    // Se tudo estiver certo, efetuar a transação
    accountSender.balance -= amount;
    accountReceiver.balance += amount;

    return true;
  }

  bool verifyId(String id) {
    return _database.containsKey(id);
  }
}
