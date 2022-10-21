mixin Agility {
  var speed = 10;
  void sitDown() {
    print('Sitting down');
  }
}

class Mammal {
  void breathe() {
    print('Breathe in ... breathe out ...');
  }
}

class Person extends Mammal with Agility {
  String name;
  int age;
  Person(this.name, this.age);
}

void main() {
  final pers = Person('Max ', 30);
  print(pers.name);
  pers.breathe();
  print(pers.speed);
  pers.sitDown();
}
