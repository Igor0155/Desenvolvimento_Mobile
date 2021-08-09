// a class main() e class principal obrigatoria

main() {
  // imprimindo alguma coisa no dart
  print('hello dart');
  print('como vai?');

  // tipos de variaveis em dart
  // dart faz interfencia

  /*var nome = 'geraldao';
	var numero = 10;

	// se eu tentar colocar outro valor na variavel nome
	var nome = 'aloy'; */

  String novoNome = 'Alexius';
  String CPF = '999.999.999-00';

  // definindo os inteiros
  int ano = 1970;

  // definindo pontos flutuantes
  double altura = 1.77;

  // definição de booleanos
  bool vf = true;
  bool fv = false;

  // saida interpolada
  // So colocamos as {} na interpolção se a variavel for composta
  print('Seu nome: $novoNome');
  print('Nascimento: $ano');
  print('Sua altura: $altura');
  print('Seu CPF: $CPF');
  print('Resultado: Fv: $fv');
  print('Resultado Vf: $vf');
}
