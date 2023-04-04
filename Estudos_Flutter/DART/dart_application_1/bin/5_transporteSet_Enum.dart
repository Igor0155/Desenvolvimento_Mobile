void main() {
  //escolherMeioTransporte(6);
  //int teste = 0;
  //escolherMeioTransporte(teste);
  escolherTransporte(Transporte.carro);

  List<String> destinos = [];

  String destino = 'Rio de Janeiro';

  destinos.add(destino);

  Set<String> registrosVisitados = <String>{};

  registrosVisitados = registrarDestinos('Rio de Janeiro', registrosVisitados);
  registrosVisitados = registrarDestinos('Canada', registrosVisitados);
  registrosVisitados = registrarDestinos('Suecia', registrosVisitados);
  registrosVisitados = registrarDestinos('alaska', registrosVisitados);
  registrosVisitados = registrarDestinos('Canada', registrosVisitados);

  print(registrosVisitados);
  print(registrosVisitados.first);
  print(registrosVisitados.last);
  print(registrosVisitados.isEmpty);
}

// Set é igual uma lista, porém ele não pega valores replicados
Set<String> registrarDestinos(String destino, Set<String> banco) {
  // Declaração vazia
  // Set<String> registrosVisitados = <String>{};
  banco.add(destino);
  return banco;
}

void escolherTransporte(Transporte locomocao) {
/*
  if (locomocao == Transporte.carro) {
    print('Vou de Carro para aventura');
  } else if (locomocao == Transporte.moto) {
    print('Vou de Moto para aventura');
  } else if (locomocao == Transporte.aviao) {
    print('Vou de Avião para aventura');
  } else {
    print('Vou para aventura');
  }
*/
  switch (locomocao) {
    case Transporte.carro:
      print('Vou de Carro para aventura');
      break;
    case Transporte.moto:
      print('Vou de moto para aventura');
      break;
    case Transporte.aviao:
      print('Vou de Carro para aventura');
      break;
    case Transporte.bike:
      print('Vou de Carro para aventura');
      break;
    case Transporte.skate:
      break;
    default:
      print('Vou para aventura');
      break;
  }
}

//enumeradores
enum Transporte { carro, bike, moto, skate, aviao }
