import 'dart:io';

//Classe Produto com construtor padrao e construtores nomeados
class Produto {
  String nome;
  double preco;

  //Construtor padrão: recebe nome e preço digitados pelo usuario
  Produto(this.nome, this.preco);

  //Construtor nomeado: cria um produto gratuito
  //O usuario informa só o nome, e o preço é automaticamente zero
  Produto.gratuito(this.nome) : preco = 0.0;

  //Construto nomeado: cria um produto com valores fixos
  Produto.oferta() : nome = 'Playstation 5 Pro', preco = 1000;

  //Método para exibir os dados do produto
  void exibir() {
    print('\n-----Dados do produto----');
    print('Nome: $nome');
    print('Preço: R\$ $preco');
  }
}

void main() {
  // Entrada de dados
  //Pergunta o nome do produto
  stdout.write('Digite o nome do produto: ');
  String nome = stdin.readLineSync() ?? 'Desconhecido';

  //Pergunta o preço do produto
  stdout.write('Digite o preço do produto: ');
  double preco = double.tryParse(stdin.readLineSync() ?? '') ?? 0.0;

  //Criação de objeto usando diferentes construtires

  //Protudo criado com o construtor padrão (nome + preço)
  Produto p1 = Produto(nome, preco);

  //Produto gratuito usando o construtor nomeado
  Produto p2 = Produto.gratuito('Amostra grátis');

  //Produto padrão usando construtr nomeado
  Produto p3 = Produto.oferta();

  //Exibição dos resultados
  print('\nProduto criado manualmente: ');
  p1.exibir();

  print('\nProduto gratuito:');
  p2.exibir();

  print('\nProduto em Oferta:');
  p3.exibir();
}
