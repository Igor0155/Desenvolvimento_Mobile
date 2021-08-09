// definindo classes

class Cachorro {
  String cor;
  double peso;
  String raca;

  // construtor
  Cachorro({required this.cor, required this.peso, required this.raca});

  // Método
  // void latir(){
  latir() {
    print('O cachorro esta latindo...');
  }

  //  void farejar() {
  farejar() {
    print('O cachorro esta farejando');
  }
}

class Gato {
  String cor;
  double peso;
  String raca;

  Gato({required this.cor, required this.peso, required this.raca});

  // Método

  // void miar(){ 
  miar() {
    print('O gato esta miando...');
  }
  
  //  void farejar() {
  farejar() {
    print('O gato esta farejando');
  }
}
