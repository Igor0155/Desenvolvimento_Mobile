import 'dart:io';

import '../controllers/bank_controller.dart';
import '../models/account.dart';

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

void stackStart() {
  // double amount = double.parse('12,35');
  // recursiveFun(1);

  print('Começando a Main');
  functionOne();

  print('Main terminou');
}

void functionOne() {
  print('Iniciando F01');

  try {
    functionTwo();
  } catch (exception, stackTrace) {
    print(exception);
    print(stackTrace);
  }
  // on FormatException catch (e) {
  //   print('Foi capturada dentro da functionTwo');
  //   print(e.message);
  //   print(e.source);
  //   print(e.toString());
  // } on HttpException catch (e) {
  //   e.toString();
  // } on IOException catch (e) {
  //   print('Uma IoException foi encontrada');
  //   e.toString();
  // } on Exception catch (e) {
  //   print(e.toString());
  // }

  print('Finalizando F01');
}

void functionTwo() {
  print('Iniciando F02');
  for (var i = 0; i <= 5; i++) {
    // try {
    //   double amount = double.parse('Not number');
    // } on FormatException {
    //   print('A conversão não pode ser feita');
    // }

    double amount = double.parse('Not number');

    print(i);
  }
  print('Finalizando F01');
}




// recursiveFun(int count) {
//   print(count + 1);
//   recursiveFun(count + 1);
// }
