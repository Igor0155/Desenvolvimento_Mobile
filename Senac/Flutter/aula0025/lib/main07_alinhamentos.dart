// alinhamentos

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      // remover a faixa debug
      debugShowCheckedModeBanner: false,

      title: 'App alinhamento',
      home: Container(
        margin: EdgeInsets.only(top: 23),

        // Definindo borda e cor do container
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.blue)),

        // Criando uma linha
        child: Column(
          children: [
            Text(
              'T01',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30,
              ),
            ),





            // aperte (ctrl + .) para ir pro atalhooo 
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'T02',
                style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 30,
                ),
              ),
            ),




            Text(
              'T03',
              style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 30,
              ),
            )
          ],

          // alinhamento principal 
          // mainAxisAlignment: MainAxisAlignment 
          // .start .center .end .spaceEnvely
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          
          // configurar o eixo que cruza o alinhamento principal 
          // crossAxisAlignment: CrossAxisAlignment 
          // .start .end .center
          crossAxisAlignment: CrossAxisAlignment.center,


        ),
      ),
    ));
