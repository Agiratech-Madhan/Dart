import 'dart:math';

// class Singleton {
//   Singleton.privateConstrunctor();
//   static final Singleton _instance = Singleton.privateConstrunctor();
//   factory Singleton() => _instance;
// }

// // factory  constructors has return value bu the ormal consutructors doen't have return value
// class ConstantClass {
//   ConstantClass();
// }

// void main() {
//   Singleton s1 = Singleton();
//   Singleton s2 = Singleton();
//   ConstantClass c1 = ConstantClass();
//   ConstantClass c2 = ConstantClass();

//   identical(s1, s2);
//   print(('identical(s1,s2)${identical(s1, s2)}'));
//   identical(c1, c2);
//   print(('identical(c1,c2)${identical(c1, c2)}'));
// }
// /**identical(s1,s2)true
// identical(c1,c2)false */

// class Square extends Shape {}

// class Circle extends Shape {}

// class Shape {
//   Shape();

//   factory Shape.fromTypeName(String typeName) {
//     if (typeName == 'square') return Square();
//     if (typeName == 'circle') return Circle();
//     throw "$typeName shape not recognized.";
//   }
// }

// void main() {
//   Shape shape = Shape.fromTypeName('circle');
//   print(shape);
// }
// class Dog {
//   String name;
//   Dog(this.name);
// }

// class Labrador extends Dog {
//   Labrador(String name) : super(name);
// }

// class Doberman extends Dog {
//   Doberman(String name) : super(name);
// }

// void main() {
//   Dog dog;
//   String name = 'tommy';
//   bool? isGuardian;
//   if (isGuardian!) {
//     dog = Doberman(name);
//   } else {
//     dog = Labrador(name);
//   }
//   //do whatever you want
// }

//=================
class Labrador extends Dog {
  Labrador(String name) : super(name);
}

class Doberman extends Dog {
  Doberman(String name) : super(name);
}

class Dog {
  String name;
  Dog(this.name);

  factory Dog.createDog({required String name, bool gaurdDog = false}) {
    if (gaurdDog) {
      return Doberman(name);
    } else {
      return Labrador(name);
    }
  }
}

void main() {
  // Dog myGaurdDog = Dog.createDog(name: 'Rocky', gaurdDog: true); //Instance of 'Doberman'
  // print(myGaurdDog);
  Dog myGaurdDog = Dog.createDog(name: 'Rocky', gaurdDog: false);
  print(myGaurdDog); //Instance of 'Labrador'
}
