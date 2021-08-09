//Sobrescrita de métodos
//Utilizando exemplo anterior nós poderíamos ter um método
//compartilhado com os dois animais
//por exemplo: farejar()

//Classe Pai
class Animal {
  String cor;
  double peso;
  String raca;

  //Construtor
  Animal({this.cor = '', this.peso = 0.0, this.raca = ''});

  //Método comum para os dois animais
  void farejar() {
    //Onde estão os prints, entenda uma lógica qualquer
    print('O animal');
    print('está farejando');
    print('como um ');
  }
}

class Cachorro extends Animal {
  //Método específico do Cachorro
  void latir() {
    print('O animal está latindo...');
  }

  //Sobrescrevendo
  @override
  void farejar() {
    super.farejar();
    print('Cachorro');
  }
}

class Gato extends Animal {
  //Método específico do Gato
  void miar() {
    print('O animal está miando');
  }

  //Sobrescrevendo
  @override
  void farejar() {
    super.farejar();
    print('Gato');
  }
}

void main() {
  Cachorro toto = new Cachorro();
  Gato felix = new Gato();

  //Definindo os valores dos atributos
  toto.cor = 'Marrom';
  felix.peso = 3.5;

  print('A cor do cachorro é: ${toto.cor}');
  toto.latir();
  print('A peso do gato é: ${felix.peso}');
  felix.miar();
  print('----------------------------------');
  toto.farejar();
  felix.farejar();
  print('----------------------------------');

}