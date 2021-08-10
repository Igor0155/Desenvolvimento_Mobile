// Exercicio de calculo de IMC
// para executar renomear para main.dart :)



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,


  home: imc(),

));

class imc extends StatefulWidget {
  @override
  _imcState createState() => _imcState();
}

class _imcState extends State<imc> {

  TextEditingController _altura = new TextEditingController();
  TextEditingController _peso = new TextEditingController();

  String _indice = '';

  void calcular(){

    setState(() {

      double altura = double.parse(_altura.text);
      double peso  = double.parse(_peso.text);

      String aux = '';

      // Validando
      if(peso <=0 || peso == "" || altura <= 0 || altura == ""){
        aux = 'Os campos nao podem estarem faltando.\nE serem negativo!';
      }
      else{

        // calculo de peso ideal
        double imc = peso / (altura * altura);

        // Magreza
        if(imc < 18.5){
          aux = 'Classificação: Magreza\nObesidade Grau 0';

        }
        // Normal
        else if(imc >= 18.5 && imc <= 24.9 ){
          aux = 'Classificação: Normal\nObesidade Grau 0';
        }

        // Obesidade Grau 1
        else if(imc >= 25 && imc <=29.9){
          aux = 'Classificação: Sobrepeso\nObesidade Grau I';
        }

        // Obesidade Grau 2
        else if(imc >= 30 && imc <= 39.9){
          aux = 'Classificação: Obesidade\nObesidade Grau II';

        }
        // Obesidade Grau 3
        else if (imc >= 40){
          aux = 'Classificação: OBESIDADE GRAVE\nObesidade Grau III';
        }

      }

      // Retorno
      _indice = '${aux}';

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Peso Ideal'),
        backgroundColor: Colors.green,
      ),

      body: Column(

        // children para colocar varios widgets
        children: [

          // Container para o texto e a imagem
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Colors.green[800]
            ),

            // Row para ficarem um na frente do outro
            child: Row(

              // children para colocar widgets dos textos  e da  imagem
              children: [

                // Texto 1
                Padding(
                  padding: const EdgeInsets.only(left: 45, bottom: 40, top: 40),
                  child: Text(
                      'Peso',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                // texto 2
                Padding(
                  padding: const EdgeInsets.only(right: 45, left: 5),
                  child: Text(
                      'Ideal',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                ),

                // Imagem
                Image.asset(

                  // chamando a imagem
                  'images/peso.png',

                  // definindo o tamanho da imagem
                  scale: 4,
                ),
              ],
            ),
          ),

          // Texto informativo
          Padding(
              padding: const EdgeInsets.only(left: 16,top: 10),

            child: Text(
                'Cálculo do  Peso Ideal, preencha as informações abaixo',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[600],
              ),
            ),
          ),

          // Input da altura
          Padding(
              padding: const EdgeInsets.only( top: 32, left: 16, right: 16),

            child: TextField(

              // tipo de entrada de dados
              keyboardType: TextInputType.number,

              // Informação para o usuario
              decoration: InputDecoration(

                labelText: 'Entre com a altura (ex.: 1.70)',
                labelStyle: TextStyle(
                  color: Colors.grey[600],
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),

              ),




              // definindo limite do campo
              maxLength: 4,

              // aviso visual do limite digitado
              maxLengthEnforcement:  MaxLengthEnforcement.none,

              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),

              controller: _altura,

            ),
          ),

          // Input do peso
          Padding(
              padding: const EdgeInsets.only(top: 10, left: 16, right: 16),

            child: TextField(

              // Tipode input
              keyboardType: TextInputType.number,

              decoration: InputDecoration(
                labelText: 'Entre com o Peso (ex.: 70.5)',
                labelStyle: TextStyle(
                  color: Colors.grey[600],
                ),

                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.green,
                  ),
                ),
              ),

              // tamanho max do input
              maxLength: 4,

              // aviso do tamanho max do input
              maxLengthEnforcement: MaxLengthEnforcement.none,

              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
              ),

              controller: _peso,

            ),
          ),

          // Botão calcular
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                // cor de fundo
                primary: Colors.green[700],
              ),
                onPressed: calcular,
                child: Text(
                    'Calcular!',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
            ),
          ),

          // Espaço da resposta
          Padding(
              padding: const EdgeInsets.only(top: 20, left: 10, right: 10),

            child: Text(
              _indice,
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
