class ContaBancaria {
  String titular;
  double _saldo;

  ContaBancaria(this.titular, this._saldo);

  void depositar(double valor) {
    _saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= _saldo) {
      _saldo -= valor;
    } else {
      print('Saldo insuficiente.');
    }
  }

  double getSaldo() => _saldo;
}

void main() {
  ContaBancaria conta = ContaBancaria('Carlos', 1000.0);
  conta.depositar(500.0);
  conta.sacar(200.0);
  print('Saldo atual: ${conta.getSaldo()}');
  conta.sacar(2000.0); // Tentativa de sacar mais do que o saldo
}