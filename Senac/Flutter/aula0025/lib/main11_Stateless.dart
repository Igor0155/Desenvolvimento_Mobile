// Stateless Widget
// Sem estado

import 'package:flutter/material.dart';

main() => runApp(AppEstatico());

class AppEstatico extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetImutavel(),

    );
  }
}

class WidgetImutavel extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App Stateless'),
        backgroundColor: Colors.lightBlue,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Text('Conteúdo do App Stateless'),
      ),

      bottomNavigationBar: BottomAppBar(
        color: Colors.lightBlue,

        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Texto 1'),
              Text(
                'Texto 2',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
              Text('Texto 3'),
            ],
          ),
        ),
      ),
    );
  }
}






