// "show" diz que só vamos pegar o "required" nessa importação
// import 'package:meta/meta.dart' show required;

// "as" diz que vamos atribuir essa biblioteca no nome "meta"
import 'dart:convert';

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
// @meta.Immutable()
class _UserModel {
  // CONST NÃO PODE SER USADO DENTRO DA CLASS

  final String name;
  final String age;

  _UserModel(this.name, this.age);

  //supondo que recebemos um json de uma api
  //                      CHAVE x VALOR nome
  _UserModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        age = json['age'];

// Recebi uma string com um json dentro

  factory _UserModel.fromJsonString(String json) {
    // decodificar string json no formato map
    // pega a string e tranforma em json
    final map = jsonDecode(json);
    return _UserModel.fromJson(map);
  }
}

main() {
  print('teste');

  // int result = soma(2);

  // print(result);

  final String msg = msm(sugeito: 'Teste', msg: 'teste2');

  print('$msg');
}


//Gerenciadores de estados: BloC, MobX GetX