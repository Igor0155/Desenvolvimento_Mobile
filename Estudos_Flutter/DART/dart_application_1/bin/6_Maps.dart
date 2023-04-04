void main() {
  List<String> destinos = [];
  String destino = 'Rio de Janeiro';
  destinos.add(destino);
  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos('Canada', registrosVisitados);
  registrosVisitados = registrarDestinos('Suecia', registrosVisitados);
  registrosVisitados = registrarDestinos('Alaska', registrosVisitados);
  registrosVisitados = registrarDestinos('Canada', registrosVisitados);

  // Primeiro tipo(String) vai ser a chave. E o segundo(Dynamic) é o valor
  Map<String, dynamic> registrarPreco = {};

  registrarPreco['Canada'] = 1200;
  registrarPreco['Suecia'] = 1500;
  registrarPreco['Alaska'] = 1000;

  print(registrarPreco);

// // Variaveis dinamicas
//   dynamic teste = 10;
//   //runtimeType printa o tipo da variavel
//   print(teste.runtimeType);

//   teste = 'teste';
//   print(teste.runtimeType);

  Viagem viagemHoje = Viagem();
  Viagem.codigoViagem;
}

//static => não precisa instancias a classe para pegar esse codigoViagem, basta chamar a class
class Viagem {
  static String codigoViagem = "SJDSK";
  double dinheiro = 0;
}

// Set é igual uma lista, porém ele não pega valores replicados
Set<String> registrarDestinos(String destino, Set<String> banco) {
  // Declaração vazia
  // Set<String> registrosVisitados = <String>{};
  banco.add(destino);
  return banco;
}
