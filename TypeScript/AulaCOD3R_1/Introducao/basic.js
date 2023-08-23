"use strict";
// const a: string = "Ts tst v2 sssssss"
// console.log(a)
//______________TIPOS_________________
let nome = "Jee";
console.log(nome);
// nome = 10 não da
let idade = 10;
idade = 10.5;
console.log(idade);
//            : number[] ...
let aleatorios = ["java", "python", "React"];
console.log(aleatorios[0]);
console.log(typeof aleatorios);
//______________TUPLAS_________________
let list = ["helloo", 10];
console.log(list);
//______________ENUMS_________________
var Cor;
(function (Cor) {
    Cor[Cor["Azul"] = 0] = "Azul";
    Cor[Cor["Preto"] = 1] = "Preto";
    Cor[Cor["Verde"] = 100] = "Verde";
    Cor[Cor["Roxo"] = 100] = "Roxo";
    Cor[Cor["Vermelho"] = 10] = "Vermelho";
})(Cor || (Cor = {}));
let minhaCor = Cor.Verde;
console.log(minhaCor);
console.log(Cor.Azul);
//______________Any_________________
let carro = "BMW";
console.log(carro);
carro = { marca: "bmw", ano: 2019 };
console.log(carro);
//______________Função_________________
//retona nome        : String -> diz que vai retornar uma string
//                   : void ...
function returnNome() {
    return nome;
}
// function com parametro
function multiplicar(num1, num2) {
    return num1 * num2;
}
console.log(multiplicar(1.5, 2));
// variavel pode receber uma function
const teste = function verdadeiro(a, b) {
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
let calculo;
calculo = multiplicar;
//_____________Objetos_________________
// conjunto de chaves e valores
//nao importa a seguencia
// definir tipos  :{xxx: string, xxx: number}
let user = {
    nome: "Jean",
    idade: 27,
};
//______________Desafio 1_________________
/*
    Criar um objetoo funcionario com:
        - Array de strings com os nomes dos supervisores
        - Função de bater ponto que recebe a hora (numero)
        e retorna uma string
            -> Ponto normal (<= 8)
            -> Fora do Horario (>8)

*/
let funcionarios = {
    superv: ["teste", "teste"],
    ponto(hora) {
        if (hora <= 8) {
            return "Ponto normal";
        }
        else {
            return "Fora do horario";
        }
    },
};
let funcionarios2 = {
    superv: ["Aladin", "betor"],
    ponto(hora) {
        if (hora <= 8) {
            return "Ponto normal";
        }
        else {
            return "Fora do horario";
        }
    },
};
console.log(funcionarios.superv);
console.log(funcionarios.ponto(8));
//______________Union Type_________________
let notas = 10;
console.log(`Minha nota é ${notas}`);
notas = '10';
console.log(`Minha nota é ${notas}`);
notas = true;
console.log(`Minha nota é ${notas}`);
const Contato1 = {
    nome: 'teste',
    tel1: '999999999',
    tel2: null
};
console.log(Contato1.tel2);
const ContaBancaria1 = {
    saldo: 1000,
    deposito(valor) {
        this.saldo += valor;
    }
};
const correntista1 = {
    nome: 'Teste',
    contaBancaria: ContaBancaria1,
    contatos: ['999999999', '9999999999']
};
correntista1.contaBancaria.deposito(100);
console.log(correntista1);
