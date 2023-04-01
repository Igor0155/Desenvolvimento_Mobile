//import 'package:test/expect.dart';

void main() {
  ///Future a main ebntende que esse objetro demora mais para ser executado
  ///com isso ela executa os outros codigos e quando chega no final dela
  ///a main execuat o Future
  //Future myFuture = Future(() {
  //  print('Estamos na Future');cc
  //  return 21;
  //}).then((value) => print('o valor é $value'));

  //Future.delayed(Duration(seconds: 5)); ss

  ///função tipo future
  ///<> indica qual tipo esse func vai pegar/esperar/ser
  ///<int>,<bool>,<String>,<double>
  //Future<int> myFutureFunc() async {
  //  print('Estamos na func future');

  ///await: espera para retornar o valor
  //  await Future.delayed(Duration(seconds: 5));
  //  throw Exception();
  //  return 12;
  //}

  // myFutureFunc()
  //     .then((value) => print('matcher $value'))
  //     //tratando erro
  //     .onError((error, stackTrace) => print('Estamos no erro'))
  //     .whenComplete(() => print('Terminando'));

  Future myFutureErro(int a, int b) async {
    //tentar executar
    try {
      if (a > b) {
        throw Exception();
      }
      print('Estamos na myFutErro');
      await Future.delayed(Duration(seconds: 5));
      return 45;
    }
    //pegar o erro
    catch (e) {
      print('Um erro esta acontecendo: $e');
    }
    //finalizar
    finally {
      print('Estamos finalizando');
    }
  }

  myFutureErro(2, 1).then((value) => print('valor: $value'));

  print('Terminamos a main do Future');
}
