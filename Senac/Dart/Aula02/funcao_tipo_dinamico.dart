// Dart e altamente tipado
// cuidado ao criar suas variaveis 

main() {
  // criando os tipos dinamico
  dynamic a = 1000;
  dynamic b = ' Mundo!';

  // chamando a função anonima dinamicamente
  dynamic uniao = concatenar(a, b);

  // Saida
  print('A uniao dos valores \"$a\" e \"$b\" é: $uniao');
}

// funcao para juntar os valores de a e b 
dynamic concatenar(param1, param2) {

  // metodo toString faz casting
  print(param1.toString() + param2.toString());
  
  // retornando os valores 
  return param1.toString() + param2.toString();
}

