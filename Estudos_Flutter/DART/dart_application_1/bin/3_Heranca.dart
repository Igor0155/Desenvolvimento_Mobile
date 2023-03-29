import 'dart:ffi';

void main() {
  //print('Hello World');

  String nome = "Laranja";
  double peso = 10.2;
  String cor = 'Verde amarela';
  String sabor = "Doce e citrica";
  int diasColheita = 30;

  Legumes mandioca1 = Legumes("Macaxeira", 1200.0, "Marrom", true);
  Fruta banana1 = Fruta("Banana", 200.0, "Amarela", "Doce", 12);
  Nozes macadamia1 = Nozes("Macadâmia", 300.0, "Branco", "Doce", 20, 35.0);
  Citricas limao1 = Citricas("Limão", 20.0, "Verde", "Azedo", 5, 10);
/*
  macadamia1.printAlimentos();
  mandioca1.printAlimentos();
  banana1.printAlimentos();
  limao1.printAlimentos();
  mandioca1.cozinhar();
*/
  banana1.separarIngredientes();

  macadamia1.fazerMassa();
}

class Fruta extends Alimento implements Bolo {
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

  @override
  void separarIngredientes() {
    print('Pegar a $nome ');
  }

  @override
  void fazerMassa() {
    print('Misturar frutas com os ingredientes');
  }

  @override
  void assar() {
    print('Colocar no forno');
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
class Legumes extends Alimento implements Bolo {
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

  @override
  void assar() {
    // TODO: implement assar
  }

  @override
  void fazerMassa() {}

  @override
  void separarIngredientes() {}
}

class Citricas extends Fruta {
  double nivelAzedo;

  Citricas(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.nivelAzedo)
      : super(nome, peso, cor, sabor, diasDesdeColheita);

  void existeRefri(bool existe) {
    if (existe) {
      print('Existe Refrigerante de $nome');
    } else {
      print('Não existe Refrigerante de $nome ');
    }
  }
}

class Nozes extends Fruta {
  double porcentagemOleoNatural;

  Nozes(String nome, double peso, String cor, String sabor,
      int diasDesdeColheita, this.porcentagemOleoNatural)
      : super(nome, peso, cor, sabor, diasDesdeColheita);
}

//Class abstrata
abstract class Bolo {
  //Separar
  void separarIngredientes();

  void fazerMassa();

  void assar();
}
