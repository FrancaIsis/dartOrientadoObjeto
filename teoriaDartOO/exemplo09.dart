import 'dart:io';

class Aluno {
  String matricula;
  String nome;
  Map<String, double> notas;

  // Construtor com parâmetros nomeados (boa prática em Dart)

  Aluno({required this.matricula, required this.nome, required this.notas});

  // Sobrescrita (override) do método toString para exibir o boletim formatado
  @override
  String toString() {
    // Cálculo da média a partir dos valores do mapa de notas
    double media = notas.values.reduce((a, b) => a + b) / notas.length;

    // Retorna uma string formatada com as informações do aluno
    return '''
Boletim Escolar
-------------------------------------------------------
Matrícula: $matricula
Nome: $nome
Notas:
  1° Bimestre: ${notas['n1']?.toStringAsFixed(2)}
  2° Bimestre: ${notas['n2']?.toStringAsFixed(2)}
  3° Bimestre: ${notas['n3']?.toStringAsFixed(2)}
  4° Bimestre: ${notas['n4']?.toStringAsFixed(2)}
-------------------------------------------------------
Média Final: ${media.toStringAsFixed(2)}
Situação: ${media >= 6 ? 'Aprovado' : 'Reprovado'}

''';
  }
}

void main() {
  // Lista que irá armazenar vários alunos cadastrados
  List<Aluno> alunos = [];
  String opcao;

  // Loop para permitir cadastrar vários alunos
  do {
    stdout.write("\nDigite a matrícula do aluno: ");
    String matricula = stdin.readLineSync()!;

    stdout.write("Digite o nome do aluno: ");
    String nome = stdin.readLineSync()!;

    // Mapa para armazenar as 4 notas do aluno
    Map<String, double> notas = {};

    // Loop para coletar 4 notas
    for
  } while (opcao == 'S');
}
