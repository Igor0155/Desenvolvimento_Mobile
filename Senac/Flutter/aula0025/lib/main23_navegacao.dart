import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  //Navigator: Classe responsável pela Navegação
                  //push(): Abre uma tela
                  //pop(): Fecha uma tela corrent
                  //Parâmetro contex: Contexto da Aplicação, em qual tela está
                  //Também já foi definido logo no começo da aplicação
                  //Parâmetro route: A rota de destido definida com
                  //MaterialPageRoute.
                  //Parâmetro builder: Usa uma função anônima para chamar
                  //a tela de destino. Utiliza context como argumento

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Servicos(),
                    ),
                  );
                },
                child: Text('Ir para Serviços'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Contato(),
                      ),
                    );
                  },
                  child: Text('Ir para os Contatos'))
            ],
          ),
        ),
      ),
    );
  }
}

///////////Tela de Serviços
class Servicos extends StatefulWidget {
  @override
  _ServicosState createState() => _ServicosState();
}

class _ServicosState extends State<Servicos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Serviços'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Tela de Serviços',
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///////Tela de Contatos
class Contato extends StatefulWidget {
  @override
  _ContatosState createState() => _ContatosState();
}

class _ContatosState extends State<Contato> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela de Contato'),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Voltar para Home'))
            ],
          ),
        ),
      ),
    );
  }
}
