void main() {
  //escolherMeioTransporte(6);

  //int teste = 0;

  //escolherMeioTransporte(teste);

  escolherTransporte(Transporte.carro);
}

void escolherMeioTransporte(int locomocao) {
  if (locomocao == 0) {
    print('Vou de Carro para aventura');
  } else if (locomocao == 1) {
    print('Vou de Bike para aventura');
  } else {
    print('Vou de Moto para aventura');
  }
}

void escolherTransporte(Transporte locomocao) {
  if (locomocao == Transporte.carro) {
    print('Vou de Carro para aventura');
  } else if (locomocao == Transporte.moto) {
    print('Vou de Moto para aventura');
  } else if (locomocao == Transporte.aviao) {
    print('Vou de Avião para aventura');
  } else {
    print('Vou para aventura');
  }

  switch (locomocao) {
    case Transporte.carro:
      return print('Vou de Carro para aventura');

    case Transporte.moto:
      return print('Vou de moto para aventura');
    case Transporte.aviao:
      return print('Vou de Carro para aventura');

    case Transporte.bike:
      return print('Vou de Carro para aventura');

    case Transporte.skate:
      break;
    default:
  }
}

enum Transporte { carro, bike, moto, skate, aviao }
