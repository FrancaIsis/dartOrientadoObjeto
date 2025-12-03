class Animal {
  //Definição da classe Animal
  String nome;
  int idade;
  double peso;
  String raca;

  //Construtor daclasse Animal de forma curta
  Animal(this.nome, this.idade, this.peso, this.raca);

  //Método void para exibir informações do animal
  void exibirInformacoes() {
    print("Nome: $nome");
    print("Idade: $idade");
    print("Peso: $peso");
    print("Raça: $raca");
    print('-' * 70);
  }

  //Método com retorno para calcular a idade em meses
  int calcularIdadeEmMeses() {
    return idade * 12;
  }
}

void main() {
  //instanciando um animal
  Animal animal = Animal("Rex", 3, 10.5, "Labrador");
  //Chamada do método exibirInformações()
  animal.exibirInformacoes();
  //Chamada do método para calcularIdadeEmMeses()
  int idadeMeses = animal.calcularIdadeEmMeses();
  print("Idade em meses: $idadeMeses");
  print('-' * 70);
}
