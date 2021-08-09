import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      title: 'App textos formatados',
      home: Container(
        // Aplicando cor
        color: Colors.white70,

        // coluna
        child: Row(
          children: [
            Text(
              'Texto exemplo para widget!',
              style: TextStyle(
                  // Definindo um tamanho para a fonte
                  fontSize: 20,
                  // Estilo
                  fontStyle: FontStyle.normal,
                  // Peso (negrito)
                  fontWeight: FontWeight.normal,
                  // Espaçamento entre os caracteres
                  letterSpacing: 2,
                  // Retirar o sublinhado do texto
                  decoration: TextDecoration.none,
                  // colocando uma cor no texto
                  color: Colors.black),
            )
          ],
        ),
      ),
    ));
