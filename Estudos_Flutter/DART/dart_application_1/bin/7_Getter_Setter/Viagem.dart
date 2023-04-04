//static => não precisa instancias a classe para pegar esse codigoViagem, basta chamar a class

import 'transporte.dart';

class Viagem {
  static String codigoViagem = "SJDSK";
  double dinheiro = 0;
  Transporte locomocao;
  Set<String> registrosVisitados = <String>{};
  Map<String, dynamic> registrarPreco = {};

// "_"  TORNA A VARIAVEL PRIVADA
  int _totalLocaisVisitados = 1;

  Viagem({required this.locomocao});

  printCodigo() {
    print(codigoViagem);
  }

  void escolherTransporte(Transporte locomocao) {
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

  void visitar(String localVisita) {
    registrosVisitados.add(localVisita);
  }

  void registrarPrecos(String local, dynamic preco) {
    registrarPreco[local] = preco;
  }

  int get consultarLocaisVisitados {
    return _totalLocaisVisitados;
  }

  void set alterarLocaisVisitados(int novaQtd) {
    _totalLocaisVisitados = _totalLocaisVisitados + novaQtd;
  }
}
