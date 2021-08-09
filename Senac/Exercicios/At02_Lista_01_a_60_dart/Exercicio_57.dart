import 'dart:io';

main() {
  double cod = 0;
  double max_temp = 0;
  double min_temp = 0;
  double temperaturas = 0;
  int aux = 0;

  while (cod != -999) {
    stdout.write('Insira a temperatura: <-999 SAIR> ');
    double temp = double.parse(stdin.readLineSync()!);

    if (min_temp == 0 && aux == 1) {
      min_temp = max_temp;
    }

    if (temp >= max_temp) {
      max_temp = temp;
    }

    if (temp <= min_temp && temp != -999) {
      min_temp = temp;
    }
    if (temp != -999) {
      temperaturas = temperaturas + temp;
    }
    cod = temp;
    aux++;
  }

  double media = (temperaturas / aux);
  print('A temperatura maxima foi: $max_temp');
  print('A temperatura minima foi: $min_temp');
  print('A media das temperaturas foi: $media');
}
