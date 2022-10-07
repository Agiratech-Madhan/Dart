void main(List<String> args) {
  // print('goodmorning');
//// Map--------------------------------
  // final planets = <num, String>{
  //   1: 'Mercury',
  //   2: 'Venus',
  //   3: 'Earth',
  //   4: 'Mars'
  // };
  // final mapFrom = Map<int, String>.from(planets);
  // print(Map.from(planets)); // {1: Mercury, 2: Venus, 3: Earth, 4: Mars}
  // print(mapFrom); // {1: Mercury, 2: Venus, 3: Earth, 4: Mars}

//
  // final moonCount = <String, int>{
  //   'Mercury': 0,
  //   'Venus': 0,
  //   'Earth': 1,
  //   'Earth': 5,
  //   'Mars': 2,
  //   'Jupiter': 79,
  //   'Saturn': 82,
  //   'Uranus': 27,
  //   'Neptune': 14,
  //   'Neptune': 19
  // };
  // final map = Map.fromEntries(moonCount
  //     .entries); // it over writes the same repeated elements that means it wont allow duplicated.
  // print(map);
// //---
  // final numbers = <int>[1, 2, 3];
  // final map = Map<String, int>.fromIterable(numbers,
  //     key: (item) => item.toString(), value: (item) => item * item * item);
  // print(map); // {1: 1, 2: 4, 3: 9};

  // final numbers = <int>[1, 2, 13];
  // final map = Map.fromIterable(numbers);
  // final map2 = Map.fromIterable(numbers, value: (e) => e * e);

  // print(map); // {1: 1, 2: 2, 3: 3};
  // print(map2); //{1: 1, 2: 4, 13: 169};

  // final rings = <bool>[false, false, true, true];
  // final planets = <String>{'Earth', 'Mars', 'Jupiter', 'Saturn'};
  // final map = Map<String, dynamic>.fromIterables(planets, rings);
  // print(map); // {Earth: false, Mars: false, Jupiter: true, Saturn: true};
  // print(map.identity());
  // factory Map.identity() = map<K, V>.identity;
//map.of ----------------------- it allows null as key

  /** final planets = {1: 'Mercury', null: 'Venus', 3: 'Earth'};
  // print(planets);
  // final mapOf = Map.of(planets);
  // print(mapOf); // {1: Mercury, 2: Venus, 3: Earth}

  // print(planets
  //     .entries); //(MapEntry(1: Mercury), MapEntry(null: Venus), MapEntry(3: Earth))
  // print(planets.keys); //(1, null, 3)
  // print(planets.values); //(Mercury, Venus, Earth)
  // print(planets.hashCode); //
//  */
//   planets.addAll({5: 'Jupiter', 6: 'Saturn'});
//   print(planets); // {1: Mercury, null: Venus, 3: Earth, 5: Jupiter, 6: Saturn}
/**
  final planets = <int, String>{
    1: 'Mercury',
    2: 'Venus',
    3: 'Earth',
    4: 'Mars'
  };
  final gasGiants = <int, String>{5: 'Jupiter', 6: 'Saturn'};
  final iceGiants = <int, String>{7: 'Uranus', 8: 'Neptune'};
  planets.addEntries(gasGiants
      .entries); //{1: Mercury, 2: Venus, 3: Earth, 4: Mars, 5: Jupiter, 6: Saturn}
  planets.addEntries(iceGiants
      .entries); //{1: Mercury, 2: Venus, 3: Earth, 4: Mars, 5: Jupiter, 6: Saturn,
//  7: Uranus, 8: Neptune}
  print(planets);
 */

/**
  final planets = <int, String>{
    1: 'Mercury',
    2: 'Venus',
    3: 'Earth',
    4: 'Mars'
  };
  planets.clear();
  print(planets);//{}
  print(planets.length);//0
*/
/** 
  final moonCount = <String, int>{
    'Mercury': 0,
    'Venus': 0,
    'Earth': 1,
    'Mars': 2,
    'Jupiter': 79,
    'Saturn': 82,
    'Uranus': 27,
    'Neptune': 14
  };
  print(moonCount.containsKey('Uranus')); // true
  print(moonCount.containsKey('Pluto')); // false
  print(moonCount.containsValue(14)); // false
  */
  // final planetsByMass = <num, String>{
  //   0.81: 'Venus',
  //   1: 'Earth',
  //   0.11: 'Mars',
  //   17.15: 'Neptune'
  // };

  // planetsByMass.forEach((key, value) {
  //   print('$key: $value');
  //   // 0.81: Venus
  //   // 1: Earth
  //   // 0.11: Mars
  //   // 17.15: Neptune
  // });
  /** 
  // print(planetsByMass.forEach(print));//throws
  // var x = [
  //   1,
  //   3,
  //   3,
  //   0,
  //   4,
  //   4,
  //   4,
  //   4,
  // ];
  // x.forEach(print);

  // dynamic object = 1;
  // object.add(42); // throws
  */
/** 
  final diameters = <num, String>{1.0: 'Earth'};
  final otherDiameters = <double, String>{0.383: 'Mercury', 0.949: 'Venus'};

  for (final item in otherDiameters.entries) {
    diameters.putIfAbsent(item.key, () => item.value);
  }
  print(diameters); // {1.0: Earth, 0.383: Mercury, 0.949: Venus}

// If the key already exists, the current value is returned.
  final result = diameters.putIfAbsent(0.383, () => 'Random');

  print(result); // Mercury
  print(diameters); // {1.0: Earth, 0.383: Mercury, 0.949: Venus}

  print(diameters.putIfAbsent(384, () => 'Madhan'));
  print(diameters); //{1.0: Earth, 0.383: Mercury, 0.949: Venus, 384: Madhan}

  //V? remove(
// Object? key
// )
*/
  // final terrestrial = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};

  // final removedValue = terrestrial.remove(2); // Venus
  // print(terrestrial); // {1: Mercury, 3: Earth}

/** */
  final terrestrial = <int, String>{1: 'Mercury', 2: 'Venus', 3: 'Earth'};
  terrestrial.removeWhere((key, value) => value.startsWith('E'));
  print(terrestrial); // {1: Mercury, 2: Venus}
}
