import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,

  home: MeuCheckBox(),
  
));


class MeuCheckBox extends StatefulWidget {

  @override
  _MeuCheckBoxState createState() => _MeuCheckBoxState();
}

class _MeuCheckBoxState extends State<MeuCheckBox> {

  bool _selecaoCheckBox = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App com caixa de Seleção'),
        backgroundColor: Colors.indigo,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text('Faça a sua escolha'),

            // CheckBox
            Checkbox(
                value: _selecaoCheckBox,
                onChanged: (bool? valor){
                  setState(() {
                    _selecaoCheckBox = valor!;
                    print('Valor da variável: $_selecaoCheckBox');
                  });
                }),
          ],
        ),
      ),
    );
  }
}
