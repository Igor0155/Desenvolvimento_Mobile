// "show" diz que só vamos pegar o "required" nessa importação
// import 'package:meta/meta.dart' show required;

// "as" diz que vamos atribuir essa biblioteca no nome "meta"
import 'package:meta/meta.dart' as meta;

// Declarações de funções e variaveis
var name = 'Igor';

// LoginController login = LoginController();
// // bom é colocar var
// var login = LoginController();

//Para tornar o paramentro opicional coloca dentro de colchetes
// adicionando parametro caso o n2 seja null
// int soma(n1, [int n2 = 5]) {
//   //Adicionando um valor defaul caso o n2 for null
//   return n1 + (n2 ?? 5);
// }

// "?" atribuindo null safety
String msm({@meta.required String? sugeito, @meta.required String? msg}) =>
    "$msg $sugeito";

//Classe

// Classes
// @meta.Immutable() Impede que os parametros sejá imutaveus (Da erro)
@meta.Immutable()
class UserModel {
  final String name;
  final String age;

  UserModel(this.name, this.age);
}

main() {
  print('teste');

  // int result = soma(2);

  // print(result);

  final String msg = msm(sugeito: 'Teste', msg: 'teste2');

  print(msg);
}
