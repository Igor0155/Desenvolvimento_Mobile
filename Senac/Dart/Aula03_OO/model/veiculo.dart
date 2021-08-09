class Veiculo {
  // declarar meus atributos
  int velo_maxima;
  int velocidade = 0;

  Veiculo([this.velo_maxima = 200, this.velocidade = 0]);

  int acelerar() {
    if (velocidade + 10 >= velo_maxima) {
      velocidade = velo_maxima;
    } else {
      velocidade += 10;
    }
    return velocidade;
  }

  int freiar() {
    if (velocidade - 10 <= 0) {
      velocidade = 0;
    } else {
      velocidade -= 10;
    }
    return velocidade;
  }

  bool limite_Velocidade() {
    return velocidade == velo_maxima;
  }

  bool parar() {
    return velocidade == 0;
  }
}
