// Stateful Widget
// Com estado

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  home: AppDinamico(),
));

class AppDinamico extends StatefulWidget {

  @override
  _AppDinamicoState createState() => _AppDinamicoState();
}

class _AppDinamicoState extends State<AppDinamico> {
  // Logica
  var _nome = 'John doe';
  var _titulo = 'Meu App Stateful';
  //
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_titulo),
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        // centralizar o conteudo
        child: Center(
          child: Column(
            // Alinhamento principal
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(_nome),
              ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _nome = 'John';
                    });
                    print('Funcionando: $_nome');
                    },
                  child: Text('Clique aqui para alterar o nome'))
            ],
          ),
        ),
        
      ),
    );
  }
}


