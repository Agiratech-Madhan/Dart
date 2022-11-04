// class Test {
//   int a = 10;
//   Test() {
//     a = 5; // Instance members(variable/method) can  acccessed from factory constructor
//     // a = 5;
//     demo();
//   }
//   void demo() {}
//   factory Test.getInstance() {
//     // a = 5; // Instance members can't be acccessed from factory constructor
//     // demo();
//     return Test();
//   }
// }

// class Test {
//   int a = 10;
//   Test(this.a);
//   Test.demo() : this(10);
//  factory Test.getInstance(this.a) {
//     this.a = 10;
//     return Test(10);
//   }
// }

// class Test {
//   Test()

//   Test.demo() {
//     return Test();
//   }
//   factory Test.getInstance() {

//     return Test();
//   }
// }
// ==========
// class Father {
//   Father();
//   factory Father.getFather() {
//     return Father();
//   }
//   factory Father.getSon() {
//     return Son();
//   }
// }

// class Son extends Father {
//   Son();
// }
class Test {
  static final Test _instance = Test();
  Test();
  factory Test.getNew() {
    return Test();
  }
  factory Test.getOld() {
    return _instance;
  }
}
