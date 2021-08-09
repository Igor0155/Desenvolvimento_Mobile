// Trabalhando com colunas 
// Importar a biblioteca material
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  title: 'App colunas',
  home: Container(
    color: Colors.grey,
    // só pode ter 1 child (widget)
    child: Row(
      // children: varios widgets
      children: [
        Text('T1 '),
        Text('T2 '),
        Text('T3 ')
      ],
    ),
  ),
));
