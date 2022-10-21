class Mammal {
  void breathe() {
    print('Breathe in ... breathe out ...');
  }
}

class Person extends Mammal {
  String name;
  int age;
  Person(this.name, this.age);
}

void main() {
  final pers = Person('Max ', 30);
  print(pers.name);
  pers.breathe();
}
