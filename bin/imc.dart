class Pessoa {
  String nome;
  double peso;
  double altura;

  Pessoa(this.nome, this.peso, this.altura);
  
  double calcularIMC() {
    return peso / (altura * altura);
  }

  String classificarIMC() {
    double imc = calcularIMC();
    if (imc < 18.5) {
      return 'Abaixo do peso';
    } else if (imc < 24.9) {
      return 'Peso normal';
    } else if (imc < 29.9) {
      return 'Sobrepeso';
    } else if (imc < 34.9) {
      return 'Obesidade Grau I';
    } else if (imc < 39.9) {
      return 'Obesidade Grau II';
    } else {
      return 'Obesidade Grau III';
    }
  }
}

void main() {
  Pessoa pessoa = Pessoa('João', 70, 1.75);
  print('Nome: ${pessoa.nome}');
  print('IMC: ${pessoa.calcularIMC().toStringAsFixed(2)}');
  print('Classificação: ${pessoa.classificarIMC()}');
}
