class Funcionario {
  String nome;
  double _salario;

  Funcionario(this.nome, this._salario);

  double getSalario() => _salario;

  void aumentarSalario(double percentual) {
    _salario *= (1 + percentual / 100);
  }
}

void main() {
  Funcionario funcionario = Funcionario('Pedro', 3000.0);
  funcionario.aumentarSalario(10);
  print('Novo salário: ${funcionario.getSalario()}');
}