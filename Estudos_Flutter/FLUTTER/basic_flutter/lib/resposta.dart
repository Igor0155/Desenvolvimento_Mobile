import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Resposta extends StatelessWidget {
  final String text;
  final void Function() onSelecao;

  Resposta(this.text, this.onSelecao);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: ElevatedButton(
        onPressed: onSelecao,
        //adicionando cor ao botão
        style:
            ElevatedButton.styleFrom(primary: Colors.deepPurpleAccent.shade400),
        child: Text(text),
      ),
    );
  }
}
