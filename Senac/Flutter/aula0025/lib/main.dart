// Entrada de dados

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(MaterialApp(
  home: Entradas(),
  debugShowCheckedModeBanner: false,

));

class Entradas extends StatefulWidget {
  @override
  _EntradasState createState() => _EntradasState();
}

class _EntradasState extends State<Entradas> {

  // Iniciando um controlador // _textEditingController = variavel pode colocar qualquer nome
  TextEditingController _textEditingController = new TextEditingController();

  // Dados da saída
  String _resposta = 'Resultado';

  void recuperarValor(){
    setState(() {
      _resposta = _textEditingController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Entrada de dados'),
        backgroundColor: Colors.blueAccent,
      ),

      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20),

            // Entrada (input)
            child: TextField(

              // TextInputType.text, .number, .emailAdress
              keyboardType: TextInputType.text,

              // Informação para o usuário
              decoration: InputDecoration(
                labelText: 'Digite alguma coisa'
              ),

              // Habilitando e desabilitando um campo
              enabled: true,

              // Tamamanho maximo dos campos
              maxLength: 5,

              // Controlador do maxlength
              // enforced: Não deixa passar da quantidade de digitos
              // pré-determinado
              // none: Libera a digitação com aviso visual
              maxLengthEnforcement: MaxLengthEnforcement.none,

              // Estilo para o inputText
              style: TextStyle(
                fontSize: 20,
                color: Colors.green,
              ),

              // Escondendo o texto (password)
              obscureText: false, // TRUE / FALSE

              // Pegar o valor // _textEditingController = variavel pode colocar qualquer nome
              controller: _textEditingController,

            ),
          ),

          ElevatedButton(
              onPressed: recuperarValor,
              child: Text('Salvar'),
          ),

          Padding(
              padding: const EdgeInsets.only(top: 20),
            child: Text(
              _resposta,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey
              ),
            ),
          ),
        ],
      ),
    );
  }
}
