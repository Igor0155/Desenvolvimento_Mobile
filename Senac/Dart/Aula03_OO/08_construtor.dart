class Retangulo {
  //Atrubutos
  double base;
  double altura;

  //Método Construtor
  //Construtores servem para iniciar os atributos
  //Parâmetros opcionais
  Retangulo([this.base = 1.0, this.altura = 1.0]) {}

  //Método Imprimir valores
  calcularAreaRetangulo() {
    return base * altura;
  }
}

main() {
  //Criando um retângulo
  Retangulo retangulo1 = new Retangulo();
  retangulo1.base = 4;
  retangulo1.altura = 10.0;

  double area = retangulo1.calcularAreaRetangulo();
  print('A área do Retângulo é: ${area}m²');

  //Saída
}