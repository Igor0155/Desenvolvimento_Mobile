// parametros nomeados em funções
// ajudar na clareza do codigo
// evitando confus~~ao com os parametros posicionais

import 'função_void.dart';

main() {
  
  // chamando a função com parametro posicional
  exibirCadastro(
      funcionario: 'Arthur Morgan', funcao: 'Gerente', salario: 1500);
}

// criar a função
// usando required: nova funcionalidade do Dart
exibirCadastro(
    {required double salario,
    required String funcionario,
    required String funcao}) {
  
  linha();
  print('Nome do funcionário: $funcionario');
  print('Nome da função: $funcao');
  print('Valor do salario: $salario');
  linha();
  
  return 'Tudo ok!';
}
