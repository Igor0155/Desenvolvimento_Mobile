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
    if (!verifyId(idSender)) {
      return false;
    }
    // Verificar se o ID de destinatario é valido
    if (!verifyId(idReceiver)) {
      return false;
    }

    Account accountSender = _database[idSender]!;

    Account accountReceiver = _database[idReceiver]!;

    // Verificar se o remetente está autenticado
    if (!accountSender.isAuthenticated) {
      return false;
    }

    // verificar se o remetete possui saldo sufuciente
    if (accountSender.balance < amount) {
      return false;
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
