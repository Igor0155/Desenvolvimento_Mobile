// Padding e margin: espaçamentos internos e externos
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  
  // Desligar a faixa debug  
  debugShowCheckedModeBanner: false,

  title: 'paddin e Margin',
  home: Container(
    
    // Definindo o espaçameto interno 
    //EdgeInsets.all para todos os lados
    //EdgeInsets.fromLTRB(left, top, right, bottom)
    // EdgeInsets.only(_): parametro nomeados e opcionais

    padding: EdgeInsets.only(left: 0, top: 50),

    // Definindo o espaçameto externos 
    // EdgeInsets.all para todos os lados
    // EdgeInsets.fromLTRB(left, top, right, bottom)
    // EdgeInsets.only(): parametro nomeados e opcionais
    
    margin: EdgeInsets.all(50),

    decoration: BoxDecoration(
      // Adicionando cor 
      color: Colors.blueGrey,

      // adicionando uma borda  

      border: Border.all(
        width: 5,
        color: Colors.amber
      )
    ),

    child: Column(
      children: [
        Text('Texto de Exemplo App',
        // alinhamento de texto  
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.normal,
          decoration: TextDecoration.none,
          color: Colors.white

        ),
        ),
      ],
    ),
  ),
));

