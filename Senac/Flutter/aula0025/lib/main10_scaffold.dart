import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(

  debugShowCheckedModeBanner: false,

  home: Scaffold(
    // Criando uma estrutura 
    // Divisao de 3 Áreas: Titulo, corpo, rodape 
    appBar: AppBar(
      // titulo 
      title: Text('Minha Aplicação'),
    ),

    body: Padding(
      padding: EdgeInsets.all(50),
      
      child: Text(
        'Conteúdo do App',
        style: TextStyle(
          fontSize: 20,
        ),
      ),
    ),

    bottomNavigationBar: BottomAppBar(
      // Aplicando uma cor  
      color: Colors.lightBlue,
      
      child: Padding(
        padding: EdgeInsets.all(20),
        child: Row(

          // Array de widget 
          children: [
            Text(
              'Texto 1 bottom',
              style: TextStyle(
               
                color: Colors.white,
              ),
              ),
              
            Text(
              'Texto 2 bottom',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
              ),
              
            Text(
              'Texto 3 bottom',
              style: TextStyle(
                color: Colors.white,
              ),
              ),
          ],
        ),
      ),
    ),
  ),
));
