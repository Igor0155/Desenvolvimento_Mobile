import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Eleve(),
      //colocando cor de thema no project
      theme: ThemeData(primarySwatch: Colors.red),

      //Rotas paginas
      initialRoute: '/',
      routes: const {
        // '/divulgue': (context) => Divulgue(),
      },
    ));

class Eleve extends StatefulWidget{
  @override
  _EleveState createState() => _EleveState();
}

// Tela principal
class _EleveState extends State<Eleve> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //Adicionando imagem no topo da tela principal
        title: Image.asset(
            'images/elevepng.png',
            // fit: BoxFit.cover,
          //deixando ela no tamanho apadrao
          fit: BoxFit.contain,
          //colocando altura na imagem
          height: 45,
        ),
        //
        // Text(
        //     'eLeve',
        //   style: TextStyle(
        //     color: Colors.red
        //   ),
        // ),
        backgroundColor: const Color.fromRGBO(255, 243, 193, 1),
        // backgroundColor: Color(255,243,193)
      ),

      body: Column(
        children: const [
        //  Listas dos clientes
          
        ],

      //   //padding?
       ),

      // navegação
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: const [
          // botão home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          // Botão Divulgue
          BottomNavigationBarItem(
            icon: Icon(Icons.add_business_rounded),
            label: 'Divulgue',
          ),
          // Botão Contato
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Contato',
          )
        ],
      ),
    );
  }
}
