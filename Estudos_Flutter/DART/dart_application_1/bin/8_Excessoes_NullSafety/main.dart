import 'dart:io';
import 'dart:math';

import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void testingNullSafety() {
  Account? myAccount;

  //Simulando uma conexão externa
  Random rng = Random();
  int rngNum = rng.nextInt(10);

  if (rngNum <= 5) {
    myAccount = Account(name: 'Tesla', balance: 200, isAuthenticated: true);
  }

  print(myAccount.runtimeType);

  // Não funciona aqui
  // print(myAccount.balance);

  //'!' Força pegar um valor, mesmo que ele pode receber nulo
  //print(myAccount!.balance);

  // // If comum
  // if (myAccount != null) {
  //   print(myAccount.balance);
  // } else {
  //   print('Conta Nula');
  // }

  //if else compactado:
  //    Se Cont != null '?' = true   ':' = false
  print(myAccount != null ? myAccount.balance : "Conta Nula");

  //Chamada segura
  //caso for null ele retorna = 'null'
  print(myAccount?.balance);
}

void main() {
  testingNullSafety();

/*
  assert(false, "testeFalso");
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: 'Joel',
      account:
          Account(name: 'Joel Vagalume', balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: 'Arthur',
      account: Account(
          name: 'Arthur Morgan ', balance: 4000, isAuthenticated: true));

  // Fazendo transferencia
  try {
    bool result = bankController.makeTransfer(
        idSender: 'Arthur',
        idReceiver: 'Joel',
        // isAuthenticated: false,
        amount: 10000);
    // observando resultado
    if (result) {
      print('Transação concluida com sucesso!');
    }
  } on SenderIdInvalidException catch (e) {
    print(e);
    print('O id: ${e.idSender} do remetente não é valido');
  } on ReceiverIdInvalidException catch (e) {
    print('O id: ${e.idReceiver} do destinatario não é valido');
  } on SenderNotAuthenticatedException catch (e) {
    print('O remetente: ${e.isSender} está com a autenticação: Falsa');
  } on SenderBalanceLowerThaAmountException catch (e) {
    print(e);
    print("O remetente: ${e.idSender}");
    print('Tem um saldo de: ${e.senderBalance}');
    print('e está tentando transferir: ${e.amount}');
  } on Exception {
    print('Algo deu errado na transação');
  }

  */
}

// void main() {
//   // throw FormatException();
//   // print(Account(name: 'John Wick', balance: 500, isAuthenticated: true));

//   try {
//     testeFunc();
//   } on Exception catch (e, stackTrace) {
//     print(e);
//     print(stackTrace);
//   }
// }

// void testeFunc() {
//   throw Account(name: 'John Wick', balance: 500, isAuthenticated: true);
// }
