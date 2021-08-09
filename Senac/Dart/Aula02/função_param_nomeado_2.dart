main() {
  // chamando a função
  avaliaFilme('Matrix', categoria: 'Ficção', nota: 10);
}

void avaliaFilme(String nomeFilme, {categoria, nota}) {

  // verificação de nulo 
  var n = nota ?? 0;
  var cat = categoria ?? 'Sem Categoria';

  // imprimindo valores
  print('Nome de Filme $nomeFilme');
  print("Categoria $cat");
  print('Nota $n');
  
}
