// Exercicio olimpiadas de Tokyo 2020

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),

      // Rotas
      initialRoute: '/',
      routes: {
        '/futebol': (context) => Futebol(),
        '/nado': (context) => Nado(),
        '/ginastica': (context) => Ginastica(),
        '/canoa': (context) => Canoa(),
      },
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
        title: Text('Tokyo 2020'),
        backgroundColor: Colors.orange.shade400,
      ),
      body: Container(
        decoration: BoxDecoration(color: Colors.blueGrey.shade100),
        child: Column(
          children: [
            // Logo Tóquio
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Image.asset(
                'images/Logo_tokyo.png',
                scale: 5,
              ),
            ),

            // Primeira parte da imagem
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Modalidade: NADO
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/nado');
                  },
                  child: Image.asset(
                    'images/nado.png',
                    width: 125,
                  ),
                ),

                // Modalidade: Corrida
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/ginastica');
                  },
                  child: Image.asset(
                    'images/Ginastica.png',
                    width: 112,
                  ),
                ),
              ],
            ),

            // Forçar spaçamento
            const SizedBox(
              height: 20,
            ),

            // Segunda parte das imagens
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Modalidade: Futebol
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/futebol');
                  },
                  child: Image.asset(
                    'images/Futebool.png',
                    width: 112,
                  ),
                ),

                // Modalidade: Ciclismo
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/canoa');
                  },
                  child: Image.asset(
                    'images/Canoa.png',
                    width: 125,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Pagina da modalidade Nado
class Nado extends StatefulWidget {
  @override
  _NadoState createState() => _NadoState();
}

class _NadoState extends State<Nado> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modalidade: Maratona Aquática'),
        backgroundColor: Colors.greenAccent.shade700,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
          ),
          child: Column(
            children: [
              // Imagem
              Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Image.asset(
                  'images/Maratona_Aquatica.jpg',
                  width: 415,
                ),
              ),

              // Titulo Part1
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Ana Marcela Cunha (ouro)',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),

              // Titulo Part2
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  'Maratona aquática',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),

              // Titulo Part3
              Padding(
                padding: EdgeInsets.only(top: 10),
                child: Text(
                  '10km feminino',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
                ),
              ),

              Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 8),
                child: Text(
                  'Uma gigante das águas abertas que finalmente conquistou a'
                  ' medalha que merecia por toda a sua carreira. A baiana'
                  ' deu um show de estratégia e resistência, liderando a '
                  'segunda metade da prova e colocando um corpo de distância'
                  ' nos últimos 500 metros. Uma verdadeira aula.',
                  style: TextStyle(
                    fontSize: 18,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Pagina Modalidade Ginastica
class Ginastica extends StatefulWidget {
  @override
  _GinasticaState createState() => _GinasticaState();
}

class _GinasticaState extends State<Ginastica> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modalidade: Ginástica Artística'),
        backgroundColor: Color(0xffE44582),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue.shade50),
          child: Column(
            children: [
              // Imagem

              Image.asset(
                'images/Ginastica_rebeca.jpg',
                width: 412,
              ),

              // Titulo Part1
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Rebeca Andrade (ouro)',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),

              // Titulo Part2
              Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  'Ginástica artística,',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),

              // Titulo Part3
              Padding(
                padding: EdgeInsets.only(top: 7),
                child: Text(
                  'salto feminino',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),

              Padding(
                padding:
                    EdgeInsets.only(top: 30, left: 30, right: 30, bottom: 40),
                child: Text(
                  'Após conquistar o ouro no salto e a prata na ginástica artística individual '
                  'geral, a atleta brasileira de 22 anos se consagra como o maior nome da '
                  'história da modalidade esportiva no Brasil\n\n'
                  'Um Cheng e um Amanar. Os brasileiros jamais esquecerão'
                  ' esses dois nomes que deram ao Brasil o primeiro ouro'
                  ' na ginástica feminina. Rebeca elevou o patamar da prova'
                  ' com dois saltos de altíssima dificuldade e desta vez subiu'
                  ' ao topo do pódio.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Pagina Modalidade Futebol
class Futebol extends StatefulWidget {
  @override
  _FutebolState createState() => _FutebolState();
}

class _FutebolState extends State<Futebol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(
          'Modalidade: Futebol',
          style: TextStyle(
            // color: Colors.green.shade900
            color: Colors.blueGrey.shade800,
          ),
        ),
        backgroundColor: Colors.yellow,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.green.shade50),
          child: Column(
            children: [
              // Imagem
              Padding(
                padding: EdgeInsets.only(top: 0),
                child: Image.asset(
                  'images/brasil.jpg',
                  width: 412,
                ),
              ),

              // Texto Titulo 1
              Padding(
                padding: const EdgeInsets.only(top: 30),
                child: Text(
                  'É ouro! Malcom decide na',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
              ),

              // Texto Titulo 2
              Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text(
                  'prorrogação, Brasil vence a',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white
                  ),
                ),
              ),

              // Texto Titulo 3
              Padding(
                padding: EdgeInsets.only(bottom: 0),
                child: Text(
                  'Espanha e conquista o ',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white
                  ),
                ),
              ),

              // Texto Titulo 4
              Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  'bicampeonato olímpico',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    // color: Colors.white
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(
                  top: 20,
                  left: 20,
                  right: 30,
                ),
                child: Text(
                  'Em final emocionante em Yokohama, Seleção perde pênalti,'
                  ' sai na frente com Matheus Cunha, leva empate e sufoco'
                  ' no segundo tempo, mas conquista a medalha dourada no fim',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ),

              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 20, right: 30, bottom: 50),
                child: Text(
                  'Yokohama é verde e amarela novamente. Mas desta vez com detalhes dourados.'
                  ' 19 anos após faturar o pentacampeonato mundial,'
                  ' o Brasil voltou à cidade japonesa para conquistar'
                  ' o bicampeonato olímpico. E foi sofrido, como já'
                  ' tinha sido diante da Alemanha, cinco anos atrás,'
                  ' na final da Rio-2016, mas desta vez sem a necessidade'
                  ' da disputa de penalidades. Na vitória por 2 a 1 sobre '
                  'a Espanha, o Brasil perdeu pênalti com Richarlison, '
                  'conseguiu sair na frente do placar com Matheus Cunha,'
                  ' mas sofreu o empate de Oyarzabal e levou pressão no '
                  'segundo tempo. Na prorrogação, porém, brilhou a estrela'
                  ' de Malcom, que deixou o banco para marcar o gol do título.',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Pagina Modalidade Canoagem

class Canoa extends StatefulWidget {
  @override
  _CanoaState createState() => _CanoaState();
}

class _CanoaState extends State<Canoa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Modalidade: Canoagem'),
        backgroundColor: Colors.blue.shade800,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.blue.shade50),
          child: Column(
            children: [
              // Imagem
              Image.asset(
                'images/Canoagem_isaquias.jpg',
                width: 412,
              ),

              // Titulo Part1
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  'Isaquias Queiroz (ouro)',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),

              // Titulo Part2
              Padding(
                padding: EdgeInsets.only(top: 7), //10
                child: Text(
                  'Canoagem velocidade,',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),

              // Titulo Part2
              Padding(
                padding: EdgeInsets.only(top: 7), //10
                child: Text(
                  'C1 1000m masculino',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                ),
              ),

              // Titulo Part2
              Padding(
                padding: EdgeInsets.only(
                    top: 30, left: 20, right: 30, bottom: 55), //10
                child: Text(
                  'Ele prometeu e cumpriu. Após três medalhas na'
                  ' Rio 2016, o canoísta baiano enfim se tornou'
                  ' campeão Olímpico. Isaquias não tomou conhecimento'
                  ' dos adversários nas eliminatórias, na semifinal e '
                  'na final, soberano na prova. Um gigante do esporte'
                  ' Olímpico brasileiro, que ainda tem mais para mostrar.',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
