// Let e Const
let testando_var = "?";
console.log(testando_var);

// arrow function

const calcular1 = function (n1: number, n2: number): number {
  return n1 + n2;
};
console.log(calcular1(1, 1));
//
function calcular2(n1: number, n2: number): number {
  return n1 + n2;
}
console.log(calcular2(1, 1));

// Sintaxe reuzida e pratica
const calcular3 = (n1: number, n2: number) => n1 + n2;
console.log(calcular3(1, 1));

//
const calcular4 = (n1: number, n2: number): number => {
  return n1 + n2;
};
console.log(calcular4(1, 1));

// __________________Valor padrao

function contagem(inicio: number = 5, fim: number = 3) {
  while (inicio >= fim) {
    inicio--;
    console.log(inicio);
  }
  console.log("Fim!");
}

contagem();
contagem(3);

// ________________Spread e Rest

// "..." varre uma list e pega todos os valores e coloca como objeto

const numbers = [1, 10, 2, 3, 5];
console.log(Math.max(...numbers)); //Vai varrer a lsta e pegar o maior valor dela

const turmaA: string[] = ["Joao", "Bernado", "vitor"];
const turmaB: string[] = ["Maria", "Julia", "Fernanda", ...turmaA];

console.log(turmaB);

// Criando uma funcção que recebe varios argumentos
function List_numbers(...args: number[]): number[] {
  return args;
}

const numeros = List_numbers(1, 2, 3, 4, 5, 6, 7);
console.log(numeros);
console.log(List_numbers(...numbers));

// _________________________Destructuring (array)
const caracteristicas = ["Notor V8 5.0", 2000];

const [motor, ano] = caracteristicas;
console.log(motor);
console.log(ano);

// _________________________Destructuring (Objeto)

const item = {
  nome: "SSD 480",
  preco: 200,
};

const { nome: n, preco: p } = item;
console.log(n);
console.log(p);

// Exerc

const multipicar = (val: number): number => val * 5;
console.log(multipicar(2));
//
const dizerOi = function (name:string = 'Igu'): void {
    console.log(`Olá ${name}`)    
}

dizerOi()
dizerOi('igu11')
//
const nums = [-3,33,55,658,1]
console.log(Math.min(...nums))
//

const array = [55,22]
console.log(array.push(...nums))



// _________________________Promise  callback

function esperar3s() {
  setTimeout(() => {
    console.log("3s depois...");
  }, 3000);
}
