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
}
