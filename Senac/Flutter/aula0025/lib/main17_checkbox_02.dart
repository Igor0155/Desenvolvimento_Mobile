import 'package:flutter/material.dart';

main() => runApp(MaterialApp(

  debugShowCheckedModeBanner: false,
  home: MeuCheckBox(),

));

class MeuCheckBox extends StatefulWidget {
  const MeuCheckBox({Key? key}) : super(key: key);

  @override
  _MeuCheckBoxState createState() => _MeuCheckBoxState();
}

class _MeuCheckBoxState extends State<MeuCheckBox> {
  bool _pizzaMarguerita = false;
  bool _pizzaCalabresa =false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com caoxa de seleção'),
        backgroundColor: Colors.indigo,
      ),

      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            CheckboxListTile(

              title: Text('Pizza Marguerita'),
                subtitle: Text('tomate, cebola, manjericão, queijo'),

                // aplicando cor
                activeColor: Colors.black,

                // cor no texto
                selected: true,

                // definindo um ícone
                secondary: Icon(
                    Icons.add_box
                ),

                value: _pizzaMarguerita,
                onChanged: (bool? valor) {
                setState(() {
                  _pizzaMarguerita = valor!;
                });
              }),

            CheckboxListTile(

                title: Text('Pizza Calabresa'),
                subtitle: Text('tomate, cebola, calabresa, queijo'),

                // aplicando cor
                activeColor: Colors.black,

                // cor no texto
                selected: true,

                // definindo um ícone
                secondary: Icon(
                    Icons.add_box
                ),

                value: _pizzaCalabresa,
                onChanged: (bool? valor) {
                  setState(() {
                    _pizzaCalabresa = valor!;
                  });
                }),
            ElevatedButton(
                onPressed: () {
                  print('Pedido');
                  print('Pizza de Marguerita: $_pizzaMarguerita');
                  print('Pizza de Calabresa: $_pizzaCalabresa');
                },
                child: Text('Fazer Pedido'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Feed',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Chat',
          ),
        ],
      ),
    );
  }
}
