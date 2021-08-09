main() {
  // condicionais
  // declarando variaveis
  int a = 10;
  int b = 5;

  // condicional simples
  if (a > b) {
    print('Informação verdadeira');
  } else {
    print('Informação falsa');
  }

  String nome = 'ori';
  // condicional
  if (nome != 'john') {
    print('Informação verdadeira');
  } else {
    print('Informação falsa');
  }

  double media = 4.0;

  if (media > 7.5 && media <= 10) {
    print('O aluno passou de ano!!!');
  } else if (media >= 5 && media <= 7.5) {
    print('Aluno em recpreração');
  } else {
    print('Aluno Reprovado');
  }
}
