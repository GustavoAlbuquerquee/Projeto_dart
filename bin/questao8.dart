import 'dart:io';

class Pessoa {
  String nome;
  int idade;

  Pessoa(this.nome, this.idade);

  void exibirDados() {
    print('Nome: $nome, Idade: $idade');
  }
}

class Cadastro {
  List<Pessoa> pessoas = [];

  void adicionarPessoa(Pessoa p) {
    pessoas.add(p);
  }

  void listarPessoas() {
    for (var pessoa in pessoas) {
      pessoa.exibirDados();
    }
  }
}

void main() {
  Cadastro cadastro = Cadastro();
  bool sair = false;

  while (!sair) {
    print('\n1 - Adicionar Pessoa');
    print('2 - Listar Pessoas');
    print('3 - Sair');
    stdout.write('Escolha uma opção: ');
    var opcao = stdin.readLineSync();

    switch (opcao) {
      case '1':
        stdout.write('Nome: ');
        var nome = stdin.readLineSync();
        stdout.write('Idade: ');
        var idade = int.parse(stdin.readLineSync()!);
        cadastro.adicionarPessoa(Pessoa(nome!, idade));
        break;
      case '2':
        cadastro.listarPessoas();
        break;
      case '3':
        sair = true;
        break;
      default:
        print('Opção inválida.');
    }
  }
}