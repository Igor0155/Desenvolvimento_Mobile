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
  // double amount = double.parse('12,35');
  // recursiveFun(1);

  print('Começando a Main');
  functionOne();

  print('Main terminou');
}

void functionOne() {
  print('Iniciando F01');
  functionTwo();
  print('Finalizando F01');
}

void functionTwo() {
  print('Iniciando F02');
  for (var i = 0; i <= 5; i++) {
    print(i);
  }
  print('Finalizando F01');
}


// recursiveFun(int count) {
//   print(count + 1);
//   recursiveFun(count + 1);
// }
