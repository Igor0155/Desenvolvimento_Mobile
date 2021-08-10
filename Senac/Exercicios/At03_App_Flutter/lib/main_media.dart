// Exercicio de calculo de Média  Aritmedica
// para exercutar renomear para main.dart :)

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: media_arit(),
    ));

class media_arit extends StatefulWidget {
  @override
  _media_aritState createState() => _media_aritState();
}

class _media_aritState extends State<media_arit> {
  TextEditingController _valor_1 = new TextEditingController();
  TextEditingController _valor_2 = new TextEditingController();

  String _resposta = 'Resultado:';

  // função para calculara media
  void calcular() {
    setState(() {
      // pagando o valor do input
      double num1 = double.parse(_valor_1.text);
      double num2 = double.parse(_valor_2.text);
      double soma = (num1 + num2) / 2;

      // retornando a soma
      _resposta = '${soma.toString()}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Titulo do Aplicativo
        title: Text('App Média'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        // children para os colocar muitos widgets
        children: [
          // Conteiner para juntar o texto com a imagem e  colocar o background so neles
          Container(
            // Definindo a cordefundo
            decoration: BoxDecoration(
              color: Colors.blue[200],
            ),

            child: Row(
              // Outro children para o texto e a imagem
              children: [
                // Padding do texto
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 30, bottom: 10),

                  // Column para os textos ficarem um em baixo do outro
                  child: Column(
                    children: [
                      // Padding do Primeiro Texto
                      Padding(
                        padding: const EdgeInsets.only(right: 45),
                        child: Text(
                          'Média',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                      ),

                      // Padding do segundo texto
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Aritimética',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Padding da imagem
                Padding(
                  padding: EdgeInsets.only(left: 70, top: 2),
                  child: Image.asset(
                    'images/media.png',
                    // definindo o tamanho da imagem
                    scale: 4,
                  ),
                ),
              ],
            ),
          ),

          // Padding do texto de preencha os campos
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Text(
              'Preencha os campos abaixo',
              style: TextStyle(
                  color: Colors.blue,
                  fontSize: 19,
                  fontWeight: FontWeight.normal),
            ),
          ),

          // Primeiro Input
          Padding(
            padding: EdgeInsets.only(
              top: 20,
              left: 20,
              right: 20,
            ),

            // Entrada  (Input )
            child: TextField(
              keyboardType: TextInputType.number,

              // informação para o usuario
              decoration: InputDecoration(
                labelText: 'Informe o primeiro valor',
              ),

              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),

              controller: _valor_1,
            ),
          ),

          // Segundo Input
          Padding(
            padding: EdgeInsets.only(top: 5, left: 20, right: 20, bottom: 30),

            // Entrada  (Input )
            child: TextField(
              keyboardType: TextInputType.number,

              // informação para o usuario
              decoration: InputDecoration(
                labelText: 'Informe o segundo valor',
              ),

              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),

              controller: _valor_2,
            ),
          ),

          // Botão de calcular
          TextButton(
            style: TextButton.styleFrom(
              // colocando borda redonda
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),

              // cor da fonte
              primary: Colors.white,

              // cor de fundo
              backgroundColor: Colors.amber,

              // largura do botão
              padding: EdgeInsets.symmetric(
                horizontal: 160,
              ),
            ),

            // chamando uma função void
            onPressed: calcular,
            child: Text(
              'Calcular',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          ),

          // forçar um espcaçamento
          const SizedBox(height: 10),

          // botao de resultado
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              // cor da fonte
              primary: Colors.red,

              // tamanho cor da borda
              side: BorderSide(width: 2, color: Colors.blueGrey),

              // largura do botão
              padding: EdgeInsets.symmetric(
                horizontal: 149,
              ),
            ),
            onPressed: () {},
            child: Text(
              _resposta,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
          )
        ],
      ),
    );
  }
}
