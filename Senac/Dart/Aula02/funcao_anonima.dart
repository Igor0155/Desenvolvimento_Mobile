//Funções anônimas: Funções que podem ser
//armazenadas dentro de variáveis
import 'dart:math';

import 'função_void.dart';

void main() {
  //Criar e definir o tipo da função
  //Minha função é do tipo inteiro
  int Function(int, int) soma = somarFunction;

//Minha função é do tipo int/double/String/Dynamic
  String Function(String, String) mostraTexto = mostrarTexto;

//Uma outra forma de criar a função anônima
//Minha função é do tipo int/double/String/Dynamic
  dynamic Function(double, double) potencia = (base, expoente) {
    return pow(base, expoente);
  }; //Não esquecer

//Mais uma
  var produto = (double a, int b) {
    return a * b;
  }; //Não esquecer

  //Saída
  linha();
  print('A soma dos valores é ${soma(10, 10)}');
  print('Frase: ${mostraTexto("Olá", " Mundo!")}');
  print('Resultado da potência é:  ${potencia(2, 3)}');
  print('Resultado da multiplicação é:  ${produto(10, 3)}');
  linha();
}

//Criando as funções
int somarFunction(int a, int b) {
  return a + b;
}

String mostrarTexto(String a, String b) {
  return a + b; //Concatenação
}