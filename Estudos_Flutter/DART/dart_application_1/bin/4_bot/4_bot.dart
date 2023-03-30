import 'dart:io';

import 'package:test/expect.dart';

import 'questions/good.dart';
import 'questions/time_questions.dart';
import 'timing/waiting_time.dart';

void main() async {
  String Friday = "Friday:\n";
  var aux = true;
  String user = '';

  var myStream = BotClock().FridayStream(1, 10);
  var subscriber = myStream.listen((event) {
    print('                  FRIDAY IS ACTIVED FOR $event SECONDS');
  }, onDone: () {
    print('Friday is finishing');
    aux = false;
  });

  print('-- Iniciando Sistema, aguarde... --');
  await BotClock().clock(2);
  print("${Friday}Oi \nComo posso ajudar?");

  do {
    user = stdin.readLineSync().toString();
    print('-- Processando pergunta, aguarde..--');
    await BotClock().clock(1);
    if (user.contains('Adeus') ||
        user.contains('adeus') ||
        user.contains('Tchau') ||
        user.contains('tchau')) {
      aux = false;
      print("${Friday}Adeus Senhor!");
    } else if (TimeQuestions(user).isThisTime()) {
      // verificar antes, assim não fazemos toda a função sem precisar.
      TimeQuestions(user).timeQuestion();
    } else if (GoodManners(user).isThisManners()) {
      GoodManners(user).goodManners();
    } else {
      print(Friday +
          ' Não fui treinado para responder a essa pergunta \n Desculpe :( ');
      print(Friday + ' Você pode fazer outra pergunta ou dizer Adeus');
    }
  } while (aux);

  print("Até a próxima senhor!");
}
