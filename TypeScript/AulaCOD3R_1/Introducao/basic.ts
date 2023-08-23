// const a: string = "Ts tst v2 sssssss"

// console.log(a)

//______________TIPOS_________________

let nome: string = "Jee";
console.log(nome);
// nome = 10 não da

let idade: number = 10;
idade = 10.5;
console.log(idade);

//            : number[] ...
let aleatorios: any[] = ["java", "python", "React"];
console.log(aleatorios[0]);
console.log(typeof aleatorios);

//______________TUPLAS_________________

let list: [string, number] = ["helloo", 10];
console.log(list);

//______________ENUMS_________________

enum Cor {
  Azul, // 0 PADRÃO
  Preto, // 1
  Verde = 100, // 100
  Roxo = 100, // 100
  Vermelho = 10, // 10
}

let minhaCor: Cor = Cor.Verde;
console.log(minhaCor);
console.log(Cor.Azul);

//______________Any_________________

let carro: any = "BMW";
console.log(carro);

carro = { marca: "bmw", ano: 2019 };
console.log(carro);

//______________Função_________________

//retona nome        : String -> diz que vai retornar uma string
//                   : void ...
function returnNome(): string {
  return nome;
}

// function com parametro
function multiplicar(num1: number, num2: number): number {
  return num1 * num2;
}

console.log(multiplicar(1.5, 2));

// variavel pode receber uma function
const teste = function verdadeiro(a: number, b: number): boolean {
  return false;
};

let tst;
tst = returnNome;
tst();

tst = multiplicar;
console.log(tst);

// variavel do tipo funcao
// qual o parametro e o tipo de retorno
// o que importa é o tipo e a ordem
let calculo: (numA: number, numB: number) => number;
calculo = multiplicar;

//_____________Objetos_________________

// conjunto de chaves e valores
//nao importa a seguencia

// definir tipos  :{xxx: string, xxx: number}
let user: { nome: string; idade: number } = {
  nome: "Jean",
  idade: 27,
};


//______________Type Alias_________________

// Alias
type FuncionariosMaster = { superv: string[], ponto: (hora: number) => string }



//______________Desafio 1_________________
/*
    Criar um objetoo funcionario com:
        - Array de strings com os nomes dos supervisores 
        - Função de bater ponto que recebe a hora (numero)
        e retorna uma string 
            -> Ponto normal (<= 8)
            -> Fora do Horario (>8)

*/
let funcionarios: FuncionariosMaster = {
  superv: ["teste", "teste"],
  ponto(hora: number): string {
    if (hora <= 8) {
      return "Ponto normal";
    } else {
      return "Fora do horario";
    }
  },
};

let funcionarios2: FuncionariosMaster = {
    superv: ["Aladin", "betor"],
    ponto(hora: number): string {
      if (hora <= 8) {
        return "Ponto normal";
      } else {
        return "Fora do horario";
      }
    },
  };

console.log(funcionarios.superv)
console.log(funcionarios.ponto(8))





//______________Union Type_________________

let notas: any = 10

console.log(`Minha nota é ${notas}`)
notas = '10'
console.log(`Minha nota é ${notas}`)
notas = true
console.log(`Minha nota é ${notas}`)


//______________Never_________________
// funcao que nunca retorna nada e nao tem fim bem sucedida
/*
function falha(msg:string) {
    throw new Error(msg);
    
}


const produto= {
    nome: 'sabao',
    preco: -1,
    validarProduto() {
        // Trim tira os spacos da frase
        // se o nome for vazio ou nao tiver nada
        if(!this.nome || this.nome.trim().length == 0){
            falha('Precisa ter um nome')
        } if(this.preco <= 0){
            falha('Preço invalido')
        }
    }
}

produto.validarProduto()
*/

//______________Null_________________

type Contato ={ 
  nome: string,
  tel1: string,
  tel2: string | null
}

const Contato1: Contato ={
  nome: 'teste',
  tel1: '999999999',
  tel2: null
}

console.log(Contato1.tel2)



//______________Desafio 2_________________


type ContaBancaria = {saldo: number, deposito: (valor: number) => void }

const ContaBancaria1: ContaBancaria = {
  saldo: 1000,
  deposito(valor: number) {
    this.saldo += valor
  }
}

type Correntistas ={nome: string, contaBancaria: ContaBancaria, contatos: string[]}

const correntista1: Correntistas ={ 
  nome:'Teste',
  contaBancaria: ContaBancaria1,
  contatos: ['999999999', '9999999999']

}

correntista1.contaBancaria.deposito(100)
console.log(correntista1)