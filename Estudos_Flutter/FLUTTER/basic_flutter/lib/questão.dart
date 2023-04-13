import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  Question(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      //largura maxima no container
      width: double.infinity,
      // Adicionando margem
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        //Centralizando o texto
        textAlign: TextAlign.center,
        //colocando uma fonte maior
        style: TextStyle(fontSize: 25),
      ),
    );
  }
}
