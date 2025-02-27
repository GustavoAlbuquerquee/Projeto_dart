class Produto {
  String nome;
  late double _preco;

  Produto(this.nome, this._preco);

  Produto.desconto(this.nome, double precoOriginal, double desconto) {
    _preco = precoOriginal * (1 - desconto / 100);
  }

  double getPreco() => _preco;
}

void main() {
  Produto produto1 = Produto('Notebook', 3000.0);
  Produto produto2 = Produto.desconto('Smartphone', 2000.0, 10);

  print('Preço do Notebook: ${produto1.getPreco()}');
  print('Preço do Smartphone com desconto: ${produto2.getPreco()}');
}