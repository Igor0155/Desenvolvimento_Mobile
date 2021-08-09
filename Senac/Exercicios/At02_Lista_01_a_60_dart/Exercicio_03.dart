import 'dart:io';

main() {
  var lista = [];

  for (var i = 0; i < 2; i++) {
    stdout.write('\nInsira o ${i + 1} numero: ');

    double num = double.parse(stdin.readLineSync()!);

    lista.add(num);
  }

  var soma = lista[0] + lista[1];

  print('\nA soma de: ${lista[0]} + ${lista[1]} = $soma\n');
}
