import 'dart:io';

main() {
  var lista = [];

  var media = 0.0;

  for (var i = 0; i < 4; i++) {
    stdout.write('\nInsira a ${i + 1}° nota: ');

    double nota = double.parse(stdin.readLineSync()!);

    lista.add(nota);
  }

  for (var i = 0; i < lista.length; i++) {

    media += lista[i];
  }

  // for (var i in lista) {

  //   media += i;
  // }

  var soma = media / lista.length;

  print('\nA media das notas são: $soma\n');
}
