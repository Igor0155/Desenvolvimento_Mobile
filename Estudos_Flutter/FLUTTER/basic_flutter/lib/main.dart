import 'dart:ffi';
import 'dart:js_util';

import 'package:flutter/material.dart';
import './questão.dart';
import './resposta.dart';

void main() => runApp(PerguntaApp());

// class para gerenciar o estado
class _PerguntaAppState extends State<PerguntaApp> {
  var _selectQuestion = 0;

  final _perguntas = const [
    {
      'texto': 'Qual o seu personagem favorito',
      'respostas': ['John Marstom', 'Arthur Morgan', 'Joel', 'Gerald de Rivea']
    },
    {
      'texto': 'Qual sua musica favorita',
      'respostas': [
        'Art Deco',
        'West Coast',
        'Cola',
        'Bubblegum Bitch',
        'Tuesday'
      ]
    },
    {
      'texto': 'Qual o sua moto favorita',
      'resposta': ['R1', 'XJ6', 'CBR', 'Z1000']
    }
  ];

  void _responder() {
    // print('Pergunta respondida');
    setState(() {
      _selectQuestion++;
    });
    print(_selectQuestion);
  }

  bool get isTemPergunta {
    return _selectQuestion < _perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    //criando lista de perguntas
    // final List perguntas = [
    //   'Qual o seu personagem favorito',
    //   'Qual o seu animal favorito',
    //   'Qual o sua moto favorita',
    // ];

    List<dynamic> teste = [];

    List<String> respostas =
        isTemPergunta ? _perguntas[_selectQuestion].cast()['respostas'] : [];
    // List<Widget> widget;

    // for (var textResp in respostas) {
    //   widget.add(Resposta(textResp, _responder));
    // }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello World'),
        ),
        body: isTemPergunta
            ? Column(
                children: [
                  //mostrando a pergunta
                  Question(_perguntas[_selectQuestion]['texto'].toString()),
                  ...respostas.map((t) => Resposta(t, _responder)).toList(),
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
              )
            : null,
      ),
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
