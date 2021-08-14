
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: AppSlider(),
));

class AppSlider extends StatefulWidget {


  @override
  _AppSliderState createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  double _valorSlider = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Layout Básico'),
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              Slider(
                  min: 0,
                  max: 50,

                  // Definindo um label no slider
                  label: '${_valorSlider.toStringAsFixed(0)}',
                  divisions: 50,
                  activeColor: Colors.green,
                  inactiveColor: Colors.red,

                  value: _valorSlider,
                  onChanged: (double valorAlterado){
                    setState(() {
                      _valorSlider = valorAlterado;
                    });
                  }
              ),
              ElevatedButton(
                  onPressed: (){
                    print('Valor selecionado ${_valorSlider.toStringAsFixed(0)}');
                  },
                  child: Text('Capturar'),
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
