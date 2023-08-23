"use strict";
// Let e Const
let testando_var = '?';
console.log(testando_var);
// arrow function 
const calcular1 = function (n1, n2) {
    return n1 + n2;
};
console.log(calcular1(1, 1));
//
function calcular2(n1, n2) {
    return n1 + n2;
}
console.log(calcular2(1, 1));
// Sintaxe reuzida e pratica
const calcular3 = (n1, n2) => n1 + n2;
console.log(calcular3(1, 1));
//
const calcular4 = (n1, n2) => {
    return n1 + n2;
};
console.log(calcular4(1, 1));
