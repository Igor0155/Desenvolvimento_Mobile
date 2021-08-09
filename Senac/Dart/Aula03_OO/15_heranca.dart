// Herança
// import 'dart:js_util';

/**
 * Herança e um mecanismo que permite caracteristicas comuns a 
 * diversas classes sejam fatoradas em uma classe base, ou 
 * superclasse. A partir de uma classe base, outras classes
 * podem ser especificadas.
 */

// classe Pai
class Animal {
  String cor;
  double peso;
  String raca;

  // Construtor
  Animal({this.cor = '', this.peso = 0.0, this.raca = ''});
}

// Para a relação de herança utilizamos a palavra extends
class Cachorro extends Animal {
  // Método
  latir() {
    print('O cachorro esta latindo...');
  }
}

class Gato extends Animal {
  // metodo
  miar() {
    print('O gato esta miando...');
  }
}

main() {
  Cachorro toto = new Cachorro();

  Gato felix = new Gato();

  toto.cor = 'Marrom';
  felix.peso = 3.5;

  print('A cor do cahorro é: ${toto.cor}');
  toto.latir();
  print('O peso do gato é: ${felix.peso}');
  felix.miar();
}
