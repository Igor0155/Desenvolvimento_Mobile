import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

maim() => runApp(MaterialApp(
  home: Entrada(),
));

class Entrada extends StatefulWidget {

  @override
  _EntradaState createState() => _EntradaState();
}

class _EntradaState extends State<Entrada> {

  // Logica
  TextEditingController _textEditingController = new TextEditingController();

  String _resposta = 'Resultado';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Entrada 2 App'),
        backgroundColor: Colors.grey,
      ),

      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20),
            child: TextField(
              keyboardType: TextInputType.text,

              decoration: InputDecoration(
                labelText: 'Digite alguma coisa',
                enabled: true,

              ),
              


              onSubmitted: (String texto){
                setState(() {
                  _resposta = texto;
                });
              },

              // Controlador
              controller: _textEditingController,
            ),
          ),
        ],
      ),
    );
  }
}
