import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Instanciando o controller para o texto
  TextEditingController _variavel01 = new TextEditingController();

  // Função para salvar o texto
  salvar() {
    String _nome;
    setState(() {
      _nome = _variavel01.text;

      // chamando a tela 2
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => ListaNome(nome: _nome),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Home'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 10, left: 20, right: 20, bottom: 50),
                child: TextField(
                  controller: _variavel01,
                  decoration: InputDecoration(
                    labelText: 'Insira seu Nome',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: salvar,
                child: Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ListaNome extends StatefulWidget {
  String? nome;
  ListaNome({this.nome});

  @override
  _ListaNomeState createState() => _ListaNomeState();
}

class _ListaNomeState extends State<ListaNome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Nomes'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text('Nome: ${widget.nome}'),
      ),
    );
  }
}
