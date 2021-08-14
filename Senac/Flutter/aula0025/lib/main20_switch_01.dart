
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: AppSwitch(),

));

class AppSwitch extends StatefulWidget {

  @override
  _AppSwitchState createState() => _AppSwitchState();
}

class _AppSwitchState extends State<AppSwitch> {
  bool _selecaoEstado = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com Switch'),
        backgroundColor: Colors.black,
      ),
      
      body: Container(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              Text('News Latter'),

              // Criar o Switch
              Switch(
                  value: _selecaoEstado,
                  onChanged: (bool estado){
                    setState(() {
                      _selecaoEstado = estado;
                      print('Estado: $_selecaoEstado');
                    });
                  }
              ),
            ],
          ),
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
