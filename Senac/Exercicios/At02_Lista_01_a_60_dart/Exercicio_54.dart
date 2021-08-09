main() {
  double preco = 0;
  for (var i = 1; i <= 50; i++) {
    preco = 0.18 * i;
    print('$i - R\$ ${preco.toStringAsFixed(2)}');
    preco = 0;
  }
}
