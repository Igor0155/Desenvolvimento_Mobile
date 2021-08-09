import 'função_void.dart';

main() {
  // declarar uma variavel e pausar uma função
  double media = calcularMedia(10, 10, 10, 10);
  double divisao = calcularDivisao(10, 5);

  print('\nMedia Aritmedica');
  linha();
  print('A media é: $media');
  print('A divisão é: $divisao');
}

// criar as funções
// função media

double calcularMedia(double n1, double n2, double n3, double n4) {
  // calculo
  double media = (n1 + n2 + n3 + n4) / 4;

  // retorno com valores
  return media;
}

double calcularDivisao(double n1, double n2) {
  
  double div = (n1 / n2);
  
  return div;
}
