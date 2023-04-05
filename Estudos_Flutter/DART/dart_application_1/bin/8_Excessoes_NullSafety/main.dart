import 'dart:io';

import 'controllers/bank_controller.dart';
import 'models/account.dart';

// void main() {
//   // Criando o banco
//   BankController bankController = BankController();

//   // Adicionando contas

//   bankController.addAccount(
//       id: 'Joel',
//       account:
//           Account(name: 'Joel Vagalume', balance: 400, isAuthenticated: true));

//   bankController.addAccount(
//       id: 'Arthur',
//       account: Account(
//           name: 'Arthur Morgan ', balance: 4000, isAuthenticated: true));

//   // Fazendo transferencia
//   bool result = bankController.makeTransfer(
//       idSender: 'Arthur', idReceiver: 'Joel', amount: 100);

//   // observando resultado
//   print(result);
// }

void main() {
  // throw FormatException();
  // print(Account(name: 'John Wick', balance: 500, isAuthenticated: true));

  try {
    testeFunc();
  } on Exception catch (e, stackTrace) {
    print(e);
    print(stackTrace);
  }
}

void testeFunc() {
  throw Account(name: 'John Wick', balance: 500, isAuthenticated: true);
}
