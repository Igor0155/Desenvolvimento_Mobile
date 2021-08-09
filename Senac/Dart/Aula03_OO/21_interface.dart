//Interface
abstract class Tabuada {
  void somar();
  void subtrair();
}

abstract class TabuadaAvancada {
  void multiplicar();
  void dividir();
}

class AlunoBom implements Tabuada, TabuadaAvancada {
  @override
  void somar() {
    print('Sabe Somar!');
  }

  @override
  void subtrair() {
    print('Sabe Subtrair!');
  }

  @override
  void multiplicar() {
    print('Sabe multiplicar!');
  }

  @override
  void dividir() {
    print('Sabe dividir!');
  }
}

class AlunoMedio implements Tabuada {
  @override
  void somar() {
    print('Sabe Somar!');
  }

  @override
  void subtrair() {
    print('Sabe Subtrair!');
  }
}

void main() {
  AlunoBom maria = new AlunoBom();
  AlunoMedio joao = new AlunoMedio();

  maria.somar();
  maria.subtrair();
  maria.multiplicar();
  maria.dividir();

  joao.somar();
  joao.subtrair();
}