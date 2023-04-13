import 'package:flutter/material.dart';

void main() => runApp(PerguntaApp());

// class para gerenciar o estado
class _PerguntaAppState extends State<PerguntaApp> {
  var _selectQuestion = 0;

  void _responder() {
    // print('Pergunta respondida');
    setState(() {
      _selectQuestion++;
    });
    print(_selectQuestion);
  }

  @override
  Widget build(BuildContext context) {
    //criando lista de perguntas
    final List perguntas = [
      'Qual o seu personagem favorito',
      'Qual o seu animal favorito',
      'Qual o sua moto favorita',
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Hello World'),
          ),
          body: Column(
            children: [
              //mostrando a pergunta
              Text(perguntas[_selectQuestion]),
              ElevatedButton(
                onPressed: _responder,
                child: Text('Resposta 1'),
              ),
              ElevatedButton(
                onPressed: _responder,
                child: Text('Resposta 2'),
              ),
              ElevatedButton(
                onPressed: _responder,
                child: Text('Resposta 3'),
              ),

              // Teste onPress
              // ElevatedButton(
              //   onPressed: () {
              //     print('Pergunta respondida');
              //   },
              //   child: Text('Resposta 2'),
              // ),
              // ElevatedButton(
              //   onPressed: () => print('Pergunta Respondida'),
              //   child: Text('Resposta 3'),
              // ),
            ],
          )),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
