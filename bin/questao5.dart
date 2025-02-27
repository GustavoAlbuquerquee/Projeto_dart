class Aluno {
  String nome;
  double _nota1;
  double _nota2;

  Aluno(this.nome, this._nota1, this._nota2);

  double calcularMedia() {
    return (_nota1 + _nota2) / 2;
  }

  String verificarAprovacao() {
    return calcularMedia() >= 7 ? 'Aprovado' : 'Reprovado';
  }
}

void main() {
  Aluno aluno = Aluno('Ana', 8.5, 7.0);
  print('Média: ${aluno.calcularMedia()}');
  print('Status: ${aluno.verificarAprovacao()}');
}