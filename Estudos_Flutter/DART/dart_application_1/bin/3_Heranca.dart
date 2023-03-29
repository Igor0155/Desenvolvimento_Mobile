import 'dart:ffi';

void main() {
  //print('Hello World');

  String nome = "Laranja";
  double peso = 10.2;
  String cor = 'Verde amarela';
  String sabor = "Doce e citrica";
  int diasColheita = 30;
}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(nome, peso, cor, this.sabor, this.diasDesdeColheita, {this.isMadura})
      : super(nome, peso, cor);

  //Metodo
  estaMadura(int diasParaMadurar) {
    isMadura = diasDesdeColheita >= diasParaMadurar;

    print(
        'A sua $nome tem $diasDesdeColheita de colheita, e precisa de $diasParaMadurar para comer. Ela está madura? $isMadura.');
  }

  void fazerSuco() {
    print('Você está faznendo suco de $nome');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimentos() {
    print("Este $nome pesa $peso gramas e é $cor");
  }
}

//"extends" Pegando herança da classe Alimento
class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  //"super" é referenciar(Chamar) a class Pai(Alimento)
  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar)
      : super(nome, peso, cor);

  void cozinhar() {
    if (isPrecisaCozinhar) {
      print('Pronto, o $nome está cozinhando');
    } else {
      print('Não precisa cozinhar');
    }
  }
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, cor, peso, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe Refrigerante de $nome');
    } else {
      print('Não existe Refrigerante de $nome ');
    }
  }
}

class Nozes extends Fruta {

  double
  
}