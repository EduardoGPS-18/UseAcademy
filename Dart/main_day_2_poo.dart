// BASICO POO
class Person {
  final String name;
  final int bornYear;

  Person.naoNomeadoObrigatorio(this.name, this.bornYear);
  Person.naoNomeadoOpcional([this.name = "", this.bornYear = 2000]);
  Person.nomeadoOpcional({this.name = "Pedro", this.bornYear = 2000});
  Person.nomeadoObrigatorio({required this.name, required this.bornYear});

  factory Person.empty() => Person.naoNomeadoObrigatorio("Teste", 2000);

  @override
  String toString() {
    return "Person {name:$name, bornYear: $bornYear}";
  }
}

// ENCAPSULAMENTO
class Bank {
  final String name;
  final double _money = 0;

  Bank(
    this.name,
  );
}

// POO
class Animal {
  final String type;

  Animal(this.type);
  void showType() => print("Tipo do animal é ${this.type}");
}

class Ave extends Animal {
  Ave(String type) : super(type);
  @override
  void showType() => print("É uma ave!");
}

class BeijaFlor extends Ave {
  BeijaFlor(String type) : super(type);
}

class Mamifero extends Animal {
  Mamifero(String type) : super(type);
}

class Cachorro extends Mamifero {
  Cachorro(String type) : super(type);
  @override
  void showType() => print("É um cachorro!!!");
}

// MIXIN E CLASSE ABSTRATA
class Pessoa with PodeCorrer implements SerVivo {
  String name;
  Pessoa({
    required this.name,
  });

  // Da classe abstrata é obrigatório a implementação
  // já o mixin não.
  @override
  void respirar() {}
}

mixin PodeCorrer {
  void podeCorrer() {}
}

abstract class SerVivo {
  void respirar();
}

// MÉTODO PRINCIPAL
main(List<String> args) {
  Person p1 = Person.naoNomeadoObrigatorio("Carlos", 2000);
  print(p1.toString());

  Animal animal = Animal("Genérico");
  animal.showType();

  Mamifero mamifero = Mamifero("Mamifero");
  mamifero.showType();

  BeijaFlor beijaFlor = BeijaFlor("Beija Flor");
  beijaFlor.showType();

  Animal cachorro = Cachorro("Cachorro");
  cachorro.showType();
}
