import 'dart:ffi';

///Documentação Comentario
///
///
//TODO: FAZER TAL COISA
void main(List<String> args) {
  // print("Hello World");

  //Tipos de Variaveis
  int idade = 10;
  double num = 10.1;

  //"const" e "final" trava o valor da variavel
  const String nome = 'Arthur Morgan';
  final String nome2 = 'Joel jorel ';

  //"var" define o tipo da variavel pelo seu valor
  var valor = 10;
  bool isverdadeiro = true;
  bool iscomp = (num == idade);
  //print('teste comp = $iscomp'
  //    '\nteste2 = $teste2');

  //Lista simples
  //Listas só aceita um tipo
  List<String> listanomes = ['Gerald', 'Arthur', 'Kratos', 'Joel'];
  //print(listanomes[0]);
  //print(listanomes.length);

  //Listas Dinamicas
  //List<dynamic> listadinamica = [10, 10.1, 'Arthur Morgan'];
  List<dynamic> listadinamica = [idade, num, nome];

  //print('teste Lista posição 2: ${listadinamica[1]}');

  if (idade >= 20) {
    print('verdadeiro');
  } else {
    print('falso');
  }

  for (var i = 0; i < 5; i++) {
    print('teste ${i}');
  }

  int aux = 0;
/*
  while (aux < idade) {
  print('while ${aux}');

    aux += 1;
  }
*/
  do {
    print('while ${aux}');

    aux += 1;
  } while (aux < idade);
}
