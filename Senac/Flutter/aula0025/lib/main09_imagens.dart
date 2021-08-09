import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  
  debugShowCheckedModeBanner: false,

  title: 'App images',
  home: Container(
    margin: EdgeInsets.only(top: 23),

    decoration: BoxDecoration(
      // background 
      color: Colors.blueGrey,

      // definindo bordas 
      border: Border.all(
        width: 3,
        color: Colors.amber
      )
    ),

    // Um child  para o widget Image 
    child: Image.asset(
      
      // Caminho da imagem 
      'images/moto.jpg',

      // definição de preenchimento da imagem 
      // cobre todo o espaçamento cortando a imagem 
      // fit: BoxFit.cover,
      // fit: BoxFit.contain // valor padrao
      // fit: BoxFit.fill // Preenchimento com distorção
      // fit: BoxFit.fitHeight // preencher pela altura (Largura na proporção)
      // fit: BoxFit.fitWidth // preencher pela largura (altura na proporção)
      // fit: BoxFit.none // Mantem a imagem original
      fit: BoxFit.contain // Mantem a imagem original
      
      

    ),
  ),
));
