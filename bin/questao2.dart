class Pessoa {
  String nome;
  int _idade;

  Pessoa(this.nome, this._idade);

  int getIdade() => _idade;

  void setIdade(int novaIdade) {
    if (novaIdade >= 0) {
      _idade = novaIdade;
    } else {
      print('Idade não pode ser negativa.');
    }
  }

  void exibirDados() {
    print('Nome: $nome, Idade: $_idade');
  }
}

void main() {
  Pessoa pessoa = Pessoa('Maria', 30);
  pessoa.exibirDados();
  pessoa.setIdade(-5); 
  pessoa.setIdade(35);
  pessoa.exibirDados();
}