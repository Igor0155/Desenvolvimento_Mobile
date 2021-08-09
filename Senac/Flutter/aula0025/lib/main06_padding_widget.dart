// padding em widget 

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  // tirar a faixa do debug  
  debugShowCheckedModeBanner: false,


  title: 'App padding em widget',
  home: Container(
    decoration: BoxDecoration(
      color: Colors.blueGrey,
      border: Border.all(
        width: 3,
        color: Colors.white,
      )
    ),
    child: Row(
      children:[
        Text(
          
          'Texto 1 ',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.none,
            color:  Colors.white,
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Texto 2 ',
            style: TextStyle(
              fontSize: 20,
              decoration: TextDecoration.none,
              color: Colors.white,
            ),
          ),
        ),

        // Padding
        // Padding(
        //   padding: EdgeInsets.all(20),
        //   child: Text(
        //     'Texto 2',
        //     style: TextStyle(
        //       fontSize: 40,
        //       decoration: TextDecoration.none,
        //       color: Colors.redAccent,
        //     ),
        //   ),
          
        // ),

        Text(
          'Texto 3 ',
          style: TextStyle(
            fontSize: 20,
            decoration: TextDecoration.none,
            color: Colors.white
          ),
        ),
      ],
    ),
  ),
));
