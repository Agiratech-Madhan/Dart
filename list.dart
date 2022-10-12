import 'dart:convert';
// import 'dart:svg';

void main(List<String> args) {
  // final fixedLengthList = List<int>.filled(5, 0); // Creates fixed-length list.
  // print(fixedLengthList); //[0, 0, 0, 0, 0]
  // fixedLengthList[4] = 99;
  // print(fixedLengthList); //[0, 0, 0, 0, 0]
  // fixedLengthList.setAll(1, [1, 2, 3]);
  // print(fixedLengthList);

  // final growableList = <String>['A', 'B']; // Creates growable list.
  // growableList[0] = 'G';
  // print(growableList); // [G, B]
  // growableList.add('X');
  // growableList.addAll({'C', 'B', 'madahn'});
  // print(growableList);

  //check the index
  // print(growableList.indexOf('A')); //non present vaue output will be -1
  // print(growableList.indexOf('B')); // first occurence elements index value
  // print(growableList.lastIndexOf('B'));
  // final growableList1 = List.empty(growable: true); // []
  // growableList1.add(1);
  // var z = [];

//Creates a list of the given length with fill at each position.
// ----------------------------------------------------------
  final shared = List.filled(3, []);
  // shared[0].add(499); //[[499], [499], [499]]
  // shared[1].add(499); //[[499, 499], [499, 499], [499, 499]]
  // shared[2].add(499);
  // shared[3].add(499); error
  // print(shared);

  //  ----------------------------------------------------------
  // List<E>.from constructor     ################to use JSON encode import dart:convert
  //  ----------------------------------------------------------
  // final numbers = <num>[1, 2, 3];
  // final listFrom = List<int>.from(numbers);
  // print(listFrom); // [1, 2, 3]

//   const jsonArray = '''
//   [{"text": "foo", "value": 1, "status": true},
//    {"text": "bar", "value": 2, "status": false}]
// ''';
// // const JsonCodec json = JsonCodec();
//   final List<dynamic> dynamicList = json.decode(jsonArray);
//   final List<Map<String, dynamic>> fooData =
//       List.from(dynamicList.where((x) => x is Map && x['text'] == 'foo'));
//   print(fooData); //[{text: foo, value: 1, status: true}]

// // const data = {'text': 'foo', 'value': 2, 'status': false, 'extra': null};
// // final String jsonString = jsonEncode(data);
// // print(jsonString);

  //  ----------------------------------------------------------
  // List<E>.generate constructor Null safety
  // #######The created list is fixed-length if growable is set to false.
  // ----------------------------------------------------------

// List<E>.generate(
// int length,
// E generator(
// int index
// ),
// {bool growable = true}
// )

  // final growableList =
  //     List<int>.generate(3, (int index) => index * index, growable: true);
  // print(growableList);
  // // List<int>.generate(3, (index) => index * index);

//-------------------------------------------------------
// List<E>.of(elements)
  // ----------------------------------------------------------
/**final numbers = <int>[1, 2, 3];
final listOf = List<num>.of(numbers);
print(listOf); // [1, 2, 3]*/

// --------------------List<E>.unmodifiable constructor-----------------
  /**final numbers = <int>[1, 2, 3];
  final unmodifiableList = List.unmodifiable(numbers); // [1, 2, 3]
  unmodifiableList[1] = 87; // Throws.*/

// ##########################################List Properties  ##########################
  dynamic topic = "list.first   ***********  properties****************";

/** final numbers = <int>[1, 2, 3];
  print(numbers.first); // 1
  numbers.first = 10;
  print(numbers.first); // 10
  numbers.clear();
  numbers.first; // Throws.*/
/** 
  final numbers = <int>[1, 2, 3];
  print(numbers.hashCode); //787131142
  print(numbers.isEmpty); // false
  print(numbers.isNotEmpty); // true;
  print(numbers.last); // 3
  final reverseOrder = numbers.reversed;
  print(reverseOrder); //(3, 2, 1)
  print(reverseOrder.toList());
  print(numbers.length); // 3
  print(numbers.runtimeType); //List<int>
  // print(numbers.single); //Checks that this iterable has only one element, and returns that element.

  final numbers1 = [1];
  print(numbers1.single);


*/
  topic = "  ***********  methods****************";

  /*final numbers = <int>[1, 2, 3];
  // numbers.add(4);
  // print(numbers); // [1, 2, 3, 4]
  final x = [4, 5, 6];
  numbers.addAll([4, 5, 6]);
  print(numbers); // [1, 2, 3, 4, 5, 6]
  // numbers.addAll[x]; // error
*/
  /* final numbers = <int>[1, 2, 3, 5, 6, 7];
  var result = numbers.any((element) => element >= 5); // true;
  var iresult = numbers.any((element) => element >= 10); // false;
  
  print(result);
  print(iresult);*/

  /* var words = ['one', 'two', 'three', 'four'];
  var map = words.asMap();
  print(map); //{0: one, 1: two, 2: three, 3: four}
  // print(map.toList()); //error
  print(map.values.toList()); //[one, two, three, four]
  print(map.keys.toList()); //[0, 1, 2, 3]
  // cast/
  final numbers = <int>[1, 2, 3];
  numbers.clear();
  print(numbers.length); // 0
  print(numbers); // [] */

  /*final gasPlanets = <int, String>{1: 'Jupiter', 2: 'Saturn'};
  final containsOne = gasPlanets.keys.contains(1); // true
  final containsFive = gasPlanets.keys.contains(5); // false
  final containsJupiter = gasPlanets.values.contains('Jupiter'); // true
  final containsMercury = gasPlanets.values.contains('Mercury'); // false
  final sam = ["4343", 34334, 2, 4];
  print(containsOne);
  print(containsFive);
  print(containsJupiter);
  print(containsMercury);
  print(sam.contains(4343));*/

  /*final numbers = <int>[1, 2, 3, 5, 6, 7];

  final elementAt = numbers.elementAt(4);
  print(elementAt); // 6
  final x = {0: 'one', 1: 'two', 2: 'three', 3: 'four'};
  print(x.elementAt(3)); //error
*/
  /* final planetsByMass = <double, String>{
    0.06: 'Mercury',
    0.81: 'Venus',
    0.11: 'Mars'
  };
// Checks whether all keys are smaller than 1.
  final every = planetsByMass.keys.every((key) => key < 1.0); // true
  print(every);
*/

// Iterable<T> expand<T>(
// Iterable<T> toElements(
// E element
// )
// )
//  ---------++++++++++++++++++++++++++++++++++++++++++List.expand++++++++++++++++++++++++
  /* Iterable<int> count(int n) sync* {
    for (var i = 1; i <= n; i++) {
      yield i;
    }
  }

  var numbers = [1, 3, 0, 2];
  print(numbers.expand(count)); // (1, 1, 2, 3, 1, 2)
  
  first iteration  =1
  second iteration= 1,2,3
  third iteration = nothing will print;
  4th iteration=1,2   2L-
*/
/** final words = List.filled(5, 'old');
  print(words); // [old, old, old, old, old]
  words.fillRange(1, 3, 'new');
  print(words); // [old, new, new, old, old]
*/
  dynamic title = "firstWhere";
// Returns the first element that satisfies the given predicate test.
//firstWhere(bool test(E element), {E orElse()?}) → E
// Iterates through elements and returns the first to satisfy test.
/**
  bool isVowel(String char) => char.length == 1 && "AEIOU".contains(char);
  final firstVowel = growableList.firstWhere(isVowel, orElse: () => ''); // '
*/
  /* final numbers = <int>[1, 2, 3, 5, 6, 7];
  var result1 = numbers.firstWhere((element) => element < 5); // 1
  var result2 = numbers.firstWhere((element) => element > 5); // 6
  var result3 =
      numbers.firstWhere((element) => element > 10, orElse:() =>-1); // -1
  print('$result1  $result2 $result3'); //1  6 -1
*/

/*
final numbers = <int>[1, 2, 6, 7];
numbers.forEach(print);// 1
*/

// final colors = <String>['red', 'green', 'blue', 'orange', 'pink'];
// final firstRange = colors.getRange(0, 3);
// print(firstRange.join(', ')); // red, green, blue

// final secondRange = colors.getRange(2, 5);
// print(secondRange.join(', ')); // blue, orange, pink
/*
  final notes = <String>['do', 're', 'mi', 're'];
  print(notes.indexOf('re')); // 1

  final indexWithStart = notes.indexOf('re', 2); // 3
  print(indexWithStart);
  final notes1 = <String>['do', 're', 'mi', 're'];
  final index = notes1.indexOf('fa'); // -1
  print(index);
*/
  // final notes = <String>['do', 're', 'mi', 're'];
  // final first = notes.indexWhere((note) => note.startsWith('r')); // 1
  // final last = notes.indexWhere((note) => note.endsWith('r')); // 1
  // final first2 = notes.indexWhere((note) => note == 're'); // 1

  // final second = notes.indexWhere((note) => note.startsWith('r'), 2); // 3

  // print(notes);//[do, re, mi, re]

  // print(first);//1
  // print(first2);//1
  // print(last);//-1
  // print(second);//3

// inset method

// final numbers = <int>[1, 2, 3, 4];
// const index = 2;
// numbers.insert(index, 10);
// print(numbers); // [1, 2, 10, 3, 4]

// void insertAll(
// int index,
// Iterable<E> iterable
// )

// final numbers = <int>[1, 2, 3, 4];
// final insertItems = [10, 11];
// numbers.insertAll(2, insertItems);
// print(numbers); // [1, 2, 10, 11, 3, 4]

// join =>Converts each element to a String and concatenates the strings.

  // final planetsByMass = <double, String>{
  //   0.06: 'Mercury',
  //   0.81: 'Venus',
  //   0.11: 'Mars'
  // };
  // final joinedNames = planetsByMass.values.join('-'); // Mercury-Venus-Mars
//   var x = 'sam join'; // error
//   var y ="madhan" // error
//  print( x.join('-')); // error
//The last index of element in this list.

// Searches the list backwards from index start to 0.
  // final notes = <String>['do', 're', 'mi', 're'];
  // const startIndex0 = 0; //-1
  // const startIndex2 = 2; //1

  // final index = notes.lastIndexOf('re', startIndex2);
  // print(index);

// lastindexwhere
  // final notes = <String>['do', 're', 'mi', 're'];
  // final first = notes.lastIndexWhere((note) => note.startsWith('r')); // 3
  // final second = notes.lastIndexWhere((note) => note.startsWith('r'), 2); // 1

// lastwhere
  // final numbers = <int>[1, 2, 3, 5, 6, 7];
  // var result = numbers.lastWhere((element) => element < 5); // 3
  // result = numbers.lastWhere((element) => element > 5); // 7
  // result = numbers.lastWhere((element) => element > 10, orElse: () => -1); // -1
// fold
  // final numbers = <double>[10, 2, 5, 0.5];
  // const initialValue = 100.0;
  // final result = numbers.fold<double>(
  //     initialValue, (previousValue, element) => previousValue + element);
  // print(result); // 117.5

//reduce
  // final numbers = <double>[10, 2, 5, 0.5];
  // final result = numbers.reduce((value, element) {
  //   print('value$value');
  //   print('element$element');
  //   return (value + element);
  // });
  // print(result); // 17.5

//remove
  // final parts = <String>['head', 'shoulders', 'knees', 'toes'];
  // final retVal = parts.remove('head'); // true

  // print(retVal);
  // print(parts); // [shoulders, knees, toes]

  // final parts1 = <String>['shoulders', 'knees', 'toes'];
  // // Note: 'head' has already been removed.
  // final retVal1 = parts.remove('head'); // false
  // print(retVal1);
  // print(parts); // [shoulders, knees, toes]

  // final parts = <String>['head', 'shoulder', 'knees', 'toes'];
  // final retVal = parts.removeAt(2); // knees
  // print(parts); // [head, shoulder, toes]

//   final parts = <String>['head', 'shoulder', 'knees', 'toes'];
// final retVal = parts.removeLast(); // toes
// print(parts); // [head, shoulder, knees]

// final numbers = <int>[1, 2, 3, 4, 5];
// numbers.removeRange(1, 4);
// print(numbers); // [1, 5]
// -----------------------------------------------------------------------------------------
//   final numbers = <String>['one', 'two', 'three', 'four'];
// // numbers.removeWhere((item) => item.length == 3);// [three, four]
//   numbers.removeWhere((item) => item.startsWith('two'));

//   print(numbers); // [three, four]
  // void replaceRange(
  // int start,
  // int end,
  // Iterable<E> replacements
  // )
  // final numbers = <int>[1, 2, 3, 4, 5];
  // final replacements = [6, 7];
  // numbers.replaceRange(1, 4, replacements);
  // print(numbers); // [1, 6, 7, 5]
  /** 
  //  equal to =>{
  // final numbers = <int>[1, 2, 3, 4, 5];
  numbers.removeRange(1, 4);
  final replacements = [6, 7];
  numbers.insertAll(1, replacements);
  print(numbers); // [1, 6, 7, 5]
  // }
  -----------------------------
*/
/*_-----________________________________________________
  final numbers = <String>['one', 'two', 'three', 'four'];
  numbers.retainWhere((item) => item.length == 3);
  print(numbers); // [one, two]
*/

//setAll_________________________________index means starting index__

// void setAll(
// int index,
// Iterable<E> iterable
// )

  // final list = <String>['a', 'b', 'c', 'd'];
  // list.setAll(1, ['bee', 'sea']);
  // print(list); // [a, bee, sea, d]

// ====================================
//   final list1 = <int>[1, 2, 3, 4];
//   final list2 = <int>[5, 6, 7, 8, 9, 82];
// // Copies the 4th and 5th items in list2 as the 2nd and 3rd items
// // of list1.
//   const skipCount = 4;
//   list1.setRange(1, 3, list2, skipCount);
//   print(list1); // [1, 8, 9, 4]

  // ============================

  // ------------------------------------
  // final numbers = <int>[1, 2, 3, 4, 5];
  // numbers.shuffle();
  // print(numbers); // [1, 3, 4, 5, 2] OR some other random result.

// --------------------------------------------------------
  // final numbers = <int>[2, 2, 10];
  // var result = numbers.singleWhere((element) => element > 5); // 10
  // print(result);
  // print(numbers.singleWhere((element) => element == 1, orElse: () => -1)); // -1

  // print(numbers.singleWhere((element) => element == 2));//throws error
  // ====================================
// skip  - takes the   one argument
  // final numbers = <int>[1, 2, 3, 5, 6, 7];
  // final result = numbers.skip(4); // (6, 7)
  // final skipAll = numbers.skip(100); // () - no elements.
  // print(result);

  // ============================== first occurence index takes for skip the element
  // final numbers = <int>[1, 2, 3, 5, 6, 7];
  // var result = numbers.skipWhile((x) => x < 5); // (5, 6, 7)
  // var result1 = numbers.skipWhile((x) => x != 3); // (3, 5, 6, 7)
  // var result2 = numbers.skipWhile((x) => x != 4); // ()
  // var result3 = numbers.skipWhile((x) => x.isOdd); // (2, 3, 5, 6, 7)
  // print(result);
  // print(result1);
  // print(result2);
  // print(result3);
// print(result); ----------------------------------------------------------------=============
//   final numbers = <String>['two', 'three', 'four'];
// // Sort from shortest to longest.
//   numbers.sort((a, b) => a.length.compareTo(b.length));
//   print(numbers); // [two, four, three]
// or
  // final numbers = <int>[13, 2, -11, 0];
  // numbers.sort();
  // print(numbers);

// ------------------------------------=================================
  // final colors = <String>['red', 'green', 'blue', 'orange', 'pink'];
  // print(colors.sublist(1, 3)); // [green, blue]
// --------------------------------------------------------------------------------
//take All method takes till index

  // final numbers = <int>[1, 2, 3, 5, 6, 7];
  // final result = numbers.take(4); // (1, 2, 3, 5)
  // final takeAll = numbers.take(100); // (1, 2, 3, 5, 6, 7)
  // print(result);
  // print(takeAll);

  // 0------------------------------=====================================44444
/*
  final numbers = <int>[1, 2, 3, 5, 6, 7];
  print(numbers.takeWhile((x) => x < 5)); // (1, 2, 3)
  print(numbers.takeWhile((x) => x != 3)); // (1, 2)
  print(numbers.takeWhile((x) => x != 4)); // (1, 2, 3, 5, 6, 7)
  print(numbers.takeWhile((x) => x.isOdd)); // (1)
*/
  // final planets = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Mars'};
  // final keysList = planets.keys.toList(growable: false); // [1, 2, 3]
  // final valuesList =
  //     planets.values.toList(growable: false); // [Mercury, Venus, Mars]
/** */

  // final numbers = <int>[1, 2, 3, 5, 6, 7];
  // var x = ["sasf", 78, "fsd"];
  // print(numbers.where((x) => x < 5)); // (1, 2, 3)
  // print(numbers.where((x) => x > 5)); // (6, 7)
  // print(numbers.where((x) => x.isEven)); // (2, 6)
  // print(x.whereType<String>());

//   var products = jsonDecode('''
// [
//   {"name": "Screwdriver", "price": 42.00},
//   {"name": "Wingnut", "price": 0.50}
// ]
// ''');
//   var values = products.map((product) => product['price'] as double);
//   var totalPrice = values.fold(0.0, (a, b) => a + b); // 42.5.

  var x = ['h', 'e', 'l', 'l', 'o'];
  print(x.length);
  // print(x[0]);
  // print(x[]);
}
