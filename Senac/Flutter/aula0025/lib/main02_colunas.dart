// Trabalhando com colunas 
// Importar a biblioteca material
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  title: 'App colunas',
  home: Container(
    color: Colors.grey,
    // só pode ter 1 child (widget)
    child: Column(
      // children: varios widgets
      children: [
        Text('Texto 1'),
        Text('Texto 2'),
        Text('Texto 3')
      ],
    ),
  ),
));
