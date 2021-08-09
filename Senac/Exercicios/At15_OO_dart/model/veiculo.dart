class Veiculos{

  int moto;

  Veiculos(this.moto);

  // método aceleração
  acelerar(){
    while (moto < 100){
      moto += 10;
      print('Acelerando a moto: $moto\Km/h');
    }
  }

  // método valocidade maxima 
  maxima(){
    if (moto == 100){
      print('\nMotoka atingiu os 100Km/h\n');
    }
  }

  // método desacelerar
  desacelerar() {
    while (moto != 0){
      moto -= 10;
      print('Desacelerando a moto: $moto\Km/h');
      if (moto == 0){
        print('A moto parou em $moto\Km/h');
      }
    }
  }
}
