class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print('Nome: $nome, Idade: $idade');
  }
}

void main() {
  Pessoa pessoa = Pessoa('João', 25);
  pessoa.exibirDados();
}