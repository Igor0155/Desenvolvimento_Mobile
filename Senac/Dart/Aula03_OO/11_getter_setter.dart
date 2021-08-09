// get server para pegar alguma coisa
// set server para configurar uma coisa

class Conta {
  // Atributos
  // o (_) underline significa Privado (VISIBILIDADE)
  // Não pode ser acessado diretamente pelo meu objetivo conta
  // ou seja, so poderar ser utilizado dentro da classe
  // 1° PILAR ENCAPSULAMENTO

  double _saque; // privado
  double saldo;

  Conta([this._saque = 100, this.saldo = 1000.0]); // Construtor

  // como o atributo não pode ser acessado diretamente
  // Vamos usar o get e set para configurá-lo
  // Fazendo isso não acessamos diretamente nossos atributos
  // Atenção: Só coloque essas configurações se realmente precisar
  // proteger seu atributo

  // get pegando o valor
  // get nao possui paramentro e retorna o valor
  double get getSaque {
    return this._saque;
    // return 400.0
  }

  // set configurando o valor
  // set possui parametro mas nao retorna valor
  set setSaque(double saque) {
    // Posso aqui fazer verificações e validações
    if (saque > 0 && saque <= saldo) {
      this._saque = saque;
    } else {
      print('Valor Indisponivel');
    }
  }
}

main() {
  // Criando uma conta
  Conta conta = new Conta();

  // Com o valor de saque setado (set)
  // Posso atribuir valor ao saque
  // _saque fica sem alterações, ou seja, valor 100
  // Nao precisa de parenteses
  conta.setSaque = 500;

  // imprimindo
  print('Valor sacado: ${conta.getSaque}');
}
