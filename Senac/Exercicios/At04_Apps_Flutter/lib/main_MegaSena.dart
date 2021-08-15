import 'dart:math';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MegaSena(),
    ));

class MegaSena extends StatefulWidget {
  @override
  _MegaSenaState createState() => _MegaSenaState();
}

class _MegaSenaState extends State<MegaSena> {
  String _resposta = '';

  void SorteioMega() {
    setState(() {
      // declarando a variavel random
      Random random = Random();

      int aux = 0;
      int i = 1;

      // criação de lista
      List<int> list = [];

      // adicionando 6 numeros aleatoreos
      for (i = 1; i <= 6; i++) {
        int NumAleat = random.nextInt(60) + 1;

        // verificar se o numero nao tiver na lista
        if (!(list.contains(NumAleat))) {
          // Adicionando os numeros na lista
          list.add(NumAleat);
          aux = aux + 1;
        }
        // if para a pegar os numeros pulados
        if (i == 6) {
          i = aux;
        }
      }
      // retornando a lista
      _resposta = '${list.toString()}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Titulo
        title: Text('App Sorteio MegaSena'),
        backgroundColor: Colors.green,
      ),
      body: Container(
        // Adicionando a borda
        decoration: BoxDecoration(
          // borda do container
          border: Border.all(
            color: Colors.lightGreen.shade600,
            width: 20,
          ),
        ),

        child: Column(
          children: [
            // Logo mega sena
            Padding(
              padding: EdgeInsets.only(top: 100, left: 12, right: 12),
              child: Image.asset(
                'images/mega_sena_2.png',
                scale: 2,
              ),
            ),

            // Numeros sorteados
            Padding(
              padding: EdgeInsets.only(top: 110),
              child: Text(
                _resposta,
                style: TextStyle(
                  fontSize: 29,
                  color: Colors.yellow.shade600,
                ),
              ),
            ),

            // Botao Sortear
            Padding(
              padding: EdgeInsets.only(
                top: 93,
              ),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green[600],
                ),
                onPressed: SorteioMega,
                child: Text(
                  'Sortear',
                  style: TextStyle(
                    fontSize: 17,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
