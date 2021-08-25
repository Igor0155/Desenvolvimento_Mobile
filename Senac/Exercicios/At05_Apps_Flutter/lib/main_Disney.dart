// Atividade Personagens Disney

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Disney(),

      // Rotas
      initialRoute: '/',
      routes: {
        '/pato': (context) => PatoD(),
        '/pateta': (context) => Pateta(),
        '/luca': (context) => Luca(),
      },
    ));

class Disney extends StatefulWidget {
  @override
  _DisneyState createState() => _DisneyState();
}

class _DisneyState extends State<Disney> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personagens Disney'),
        backgroundColor: Color(0xff0146CB),
      ),
      body: Center(
        child: Column(
          children: [
            //Imagem Logo Disney
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Image.asset(
                'images/Logo_disney.png',
                width: 250,
              ),
            ),

            // Imagem Mickey
            Padding(
              padding: EdgeInsets.only(top: 30, left: 40),
              child: Image.asset(
                'images/mickey_img.png',
                width: 250,
              ),
            ),

            // Texto do persnagem
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text('Mickey'),
            ),

            // Botao de navegação
            Padding(
              padding: const EdgeInsets.only(top: 60),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff0168FB)),
                onPressed: () {
                  Navigator.pushNamed(context, '/pato');
                },
                child: Text(
                  'Próximo',
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

// Tela do Pato Donald
class PatoD extends StatefulWidget {
  @override
  _PatoDState createState() => _PatoDState();
}

class _PatoDState extends State<PatoD> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personagens Disney'),
        backgroundColor: Color(0xff0146CB),
      ),
      body: Center(
        child: Column(
          children: [
            //Imagem Logo Disney
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Image.asset(
                'images/Logo_disney.png',
                width: 250,
              ),
            ),

            // Imagem Pato Donald
            Padding(
              padding: EdgeInsets.only(
                top: 10,
              ),
              child: Image.asset(
                'images/pato_donald.png',
                width: 220,
              ),
            ),

            // Texto do persnagem
            Padding(
              padding: const EdgeInsets.only(top: 2),
              child: Text('Pato Donald'),
            ),

            // Botao de navegação
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff0168FB)),
                onPressed: () {
                  Navigator.pushNamed(context, '/pateta');
                },
                child: Text(
                  'Próximo',
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

// Tela do Pateta
class Pateta extends StatefulWidget {
  @override
  _PatetaState createState() => _PatetaState();
}

class _PatetaState extends State<Pateta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personagens Disney'),
        backgroundColor: Color(0xff0146CB),
      ),
      body: Center(
        child: Column(
          children: [
            //Imagem Logo Disney
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Image.asset(
                'images/Logo_disney.png',
                width: 250,
              ),
            ),

            // Imagem Pateta
            Padding(
              padding: EdgeInsets.only(top: 7, left: 40),
              child: Image.asset(
                'images/Pateta.png',
                width: 230,
              ),
            ),

            // Texto do personagem
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Text('Pateta'),
            ),

            // Botao de navegação
            Padding(
              padding: const EdgeInsets.only(top: 35),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xff0168FB)),
                onPressed: () {
                  Navigator.pushNamed(context, '/luca');
                },
                child: Text(
                  'Próximo',
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

class Luca extends StatefulWidget {
  @override
  _LucaState createState() => _LucaState();
}

class _LucaState extends State<Luca> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personagens Disney'),
        backgroundColor: Color(0xff0146CB),
      ),
      body: Center(
        child: Column(
          children: [
            //Imagem Logo Disney
            Padding(
              padding: EdgeInsets.only(top: 25),
              child: Image.asset(
                'images/Logo_disney.png',
                width: 250,
              ),
            ),

            // Imagem Luca
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20),
              child: Image.asset(
                'images/Luca.png',
                width: 380,
              ),
            ),

            // Texto do personagem
            Padding(
              padding: const EdgeInsets.only(top: 0),
              child: Text('Luca'),
            ),

            // Botao de navegação
            Padding(
              padding: const EdgeInsets.only(top: 110),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff0168FB),
                ),
                onPressed: () {
                  // Navigator.popAndPushNamed(context,'/');

                  // Navigator.restorablePopAndPushNamed(context, '/');

                  // Navigator.pushNamed(context, '/');

                  // Navigator.push(context,
                  //     MaterialPageRoute(
                  //     builder: (context) => Disney(),
                  //     )
                  // );
                },
                child: Text(
                  'Fim',
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
