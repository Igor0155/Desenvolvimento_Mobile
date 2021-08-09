import 'dart:io';

main() {
  stdout.write('Insira um numero: ');
  int num = int.parse(stdin.readLineSync()!);

  verificacao_unidades(num);
}

verificacao_unidades(int numero) {
  int dezena = 0, centena = 0, unidade = 0;

  while (numero > 0) {
    
    if (numero >= 100 && numero <= 999) {
      
      numero = numero - 100;
      centena = centena + 1;
    }
     else if (numero >= 10 && numero <= 99) {

      numero = numero - 10;
      dezena = dezena + 1;
    } 
    else if (numero > 0 && numero <= 9) {

      numero = numero - 1;
      unidade = unidade + 1;
    }
  }
  
  return print('centenas = $centena dezenas = $dezena unidades = $unidade');
}
