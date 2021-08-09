import 'model/veiculo.dart';

main() {
  var camaro = new Veiculo(100);

  while (!camaro.limite_Velocidade()) {
    print('Acelerando o camaro: ${camaro.acelerar()}Km/h');
  }

  // saida
  print('O camaro chegou a ${camaro.velocidade}Km/h');

  while (!camaro.parar()) {
    print('Freando o camaro: ${camaro.freiar()}Km/h');
  }
}
