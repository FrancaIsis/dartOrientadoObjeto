import 'dart:io';

class Triangulo {
  //atributos
  double base;
  double altura;

  //Construtor com parâmetros nomeados
  Triangulo({required this.base, required this.altura});

  //Método para calcular área
  double calcularArea() {
    return (base * altura) / 2;
  }
}

void main() {
  print('');
  stdout.write("Base do triângulo: ");
  double base = double.parse(stdin.readLineSync()!);

  stdout.write("Altura do triângulo: ");
  double altura = double.parse(stdin.readLineSync()!);
  //Instanciando o objeto  com parametros NOMEADOS
  Triangulo triangulo = Triangulo(base: base, altura: altura);
  double area = triangulo.calcularArea();

  print("A área do triângulo é: $area");
  print('-' * 70);
}
