import 'dart:io';

main() {
  stdout.write('\nInsira a sua altura: ');

  double altura = double.parse(stdin.readLineSync()!);

  double peso_ideal = (72.7 * altura) - 58;

  print('\n O seu peso ideal é: $peso_ideal');


}
