// Código 01

void main() {
  //print('Hello World');
  
  String nome = "Laranja";
  double peso = 10.2;
  String cor = 'Verde amarela';
  String sabor = "Doce e citrica";
  int diasColheita = 30;
  //Ptratica de colocar "is" em variaveis bool
  //bool ismadura = funcEstaMadura(diasColheita);

  //print(ismadura);
  //print(funcEstaMadura(60));

  //var teste = mostrarMadura("Uva", 40, cor: "Roxa");
  //print(teste);

  //mostrarMadura("Uva", 40, cor: "Roxa");
  //mostrarMadura("Uva", 40);

  //quantosDiasMaduro(diasColheita);

  //int teste = quantosDiasMaduro(diasColheita);
  //print(teste);

  //Fruta fruta1 = Fruta(nome, peso, cor, sabor, diasColheita);

  //print(fruta1.nome);

  //fruta1.estaMadura(30);
}

class Fruta {
  String nome;
  double peso;
  String cor;
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(this.nome, this.peso, this.cor, this.sabor, this.diasDesdeColheita,
      {this.isMadura});

  //Metodo
  estaMadura(int diasParaMadurar) {
    isMadura = diasDesdeColheita >= diasParaMadurar;

    print(
        'A sua $nome tem $diasDesdeColheita de colheita, e precisa de $diasParaMadurar para comer. Ela está madura? $isMadura.');
  }
}

int quantosDiasMaduro(int dias) {
  int diasParaMadurar = 30;
  int quantosDiasFaltam = diasParaMadurar - dias;

  return quantosDiasFaltam;
  //print("Faltam $quantosDiasFaltam dias");
}

//Função
mostrarMadura(String nome, int dias, {required String cor}) {
  if (dias >= 30) {
    print('A ${nome} está madura');
  } else {
    print('A ${nome} não está madura');
  }

  if (cor != null) {
    print("A $nome é $cor");
  }
}

//Função bool
bool funcEstaMadura(int dias) {
  if (dias >= 30) {
    return true;
  } else {
    return false;
  }
}
