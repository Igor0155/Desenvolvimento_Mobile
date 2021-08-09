main() {
  double preco = 0;
  for (var i = 1; i <= 50; i++) {
    preco = 1.99 * i;
    print('$i - R\$ ${preco.toStringAsFixed(2)}');
    preco = 0;
  }
}
