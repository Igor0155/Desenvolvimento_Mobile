// Arrow function e uma forma reduzida de representar
// uma funcao. Contra: são limitadas, nao podem ser utilizadas
// em todas as situações

main() {
  // criando função anonima
  var produto = (int a, int b) {
    return a * b;
  }; //Lembrar do ;

  // Arrow Function
  // Possui 1 Sentença de codigo
  var divisao = (double a, double b) => a / b; // => representa retorno
  var modulo = (double c, double d) => c % d;
  var media = (
    double n1,
    double n2,
    double n3,
  ) =>
      (n1 + n2 + n3) / 3;

  // Saida
  print('\nO valor do produto é: ${produto(10, 5)}');
  print('\nO valor da divisão é ${divisao(50, 2)}');
  print('\nO valor do modulo é ${modulo(5, 3)}');
  print('\nO valor da media é ${media(5, 5, 5,)}');
}
