//Criar uma função para encontrar o Delta
import 'dart:math';
double calcularDelta(double a, double b, double c) {
  //Fórmula Delta
  double delta = pow(b, 2) - (4 * a * c);
  return delta;
}
//Criando uma função para encontrar os valores de X1 e X2
//Passo os valores das incógnitas e a função do Delta
dynamic cacularEquacao(double a, double b, double c, Function calcularDelta) {
  //Teste com 1, 2 e -15 - S={3, -5}
  var solucao = [];

  //Calculando as raízes
  var x1 = ((-b) + sqrt(calcularDelta(a, b, c))) / (2 * a);
  var x2 = ((-b) - sqrt(calcularDelta(a, b, c))) / (2 * a);
  //Inserindo valores na lista
  solucao.add(x1);
  solucao.add(x2);
  return solucao;
}
void main() {
  //Declarar os valores
  double a = 1;
  double b = 2;
  double c = -15;

  //Chamando a função com os parâmetros juntos
  var equacao = cacularEquacao(a, b, c, calcularDelta);
  //Saída
  print('Resultado da Equação é a S=$equacao');
}