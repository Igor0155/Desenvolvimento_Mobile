// Trabalhando com botoes

import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      // remover a faixa debug
      debugShowCheckedModeBanner: false,

      title: 'App botoes',
      home: Container(
        // margens
        margin: EdgeInsets.only(top: 23),

        // Expaçamentos
        padding: EdgeInsets.all(20),
        color: Colors.blueGrey,

        child: Column(

          // Espaçamento principal
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            TextButton(
                style: TextButton.styleFrom(

                  // Borda arredondada
                  shape: RoundedRectangleBorder(

                      // controlar o arredondamento
                      borderRadius: BorderRadius.circular(20)
                  ),

                  // cor de foreground
                  primary: Colors.red,

                  // cor de background
                  backgroundColor: Colors.white,

                  // espaçamento dentro do botão
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 32
                  ),
                ),
                onPressed: () {
                  print('Executando...');
                },
                child: Text(
                  'Meu botao',
                  style: TextStyle(
                    fontSize: 20
                  ),
                ),
            ),

            // forçar um espcaçamento 
            const SizedBox(height: 20,),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                // cor background 
                primary: Colors.amber,

                // cor foreground 
                onPrimary: Colors.black,

              ),
              onPressed: (){}, 
              child:  Text(
                'Botão 2',
                style: TextStyle(
                  fontSize: 20,
                ),
              )
            ),

            const SizedBox(height: 20,),

            OutlinedButton(
              style: OutlinedButton.styleFrom(
                
                // cor do foreground 
                primary: Colors.black,

                // cor da borda
                side:  BorderSide(
                  width: 1,
                  color: Colors.orange
                )
              ),
              
              onPressed: (){}, 
              child: Text(
                'Botão 3',
                style: TextStyle(
                  fontSize: 30
                ),
              )
            ),

            const SizedBox(height: 20),

            // botao com icone 
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                side: BorderSide(
                  width: 1,
                  color: Colors.amber
                ),
                primary: Colors.red,
                onPrimary: Colors.amber
              ),


              onPressed: () {},
              icon: Icon(
                Icons.add_a_photo_rounded,
                color: Colors.white,
              ),
              label: Text(
                'Label do botao',
              )
            ),

            const SizedBox(height: 20),

            ElevatedButton(

              style: ElevatedButton.styleFrom(
                onSurface: Colors.amber,
              ),
              
              onPressed: null,
              child: Text(
                'Botao desativado!',
                style: TextStyle(
                  fontSize: 25
                ),
              )
            ),
          ],
        ),
      ),
    ));
