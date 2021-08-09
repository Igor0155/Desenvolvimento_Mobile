//Com uma função retornando outra função
//podemos fazer com que alguma parte do nosso código
//seja executada em um outro momento

//Criando a função
import 'função_void.dart';

double Function(double) calcularJuros(double a) {
  return (double b) {
    return a * b;
  };
}

void main() {
  //Passando os dois valores
  print(calcularJuros(2)(20));

  //Colocando a função em uma variável para otimizar o processo
  //passando 1 valor
  var juros = calcularJuros(.10);

  //Saída

  linha();
  print(juros(1500));
  print(juros(3000));
  print(juros(6000));
  linha();
}