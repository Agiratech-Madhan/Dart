void main(List<String> args) {
  var myMap = {
    "name": "sam",
    "age": 34,
    "city": "vellore",
    "address": [
      {"country": "india", "city": "vellore"},
      {"country": "america", "city": "Chennai"}
    ]
  };
  var obj = Person.fromjson(myMap);
  print(obj);
}

class Person {
  String? name;
  int? age;
  String? city;
  List<Address>? address;
  Person({
    this.name,
    this.age,
    this.city,
    this.address,
  });
  Person.fromjson(Map<String, dynamic> parsedata) {
    Person(
        name: parsedata['name'],
        age: parsedata['age'],
        city: parsedata['city']);
    if (parsedata['address'] != null) {
      List<Address> address = [];
      (parsedata['address'] as List).forEach((element) {
        address.add(Address.fromJson(element));
      });
    }
  }
}

class Address {
  String? Country;
  String? city;
  Address({
    this.Country,
    this.city,
  });
  Address.fromJson(Map<String, dynamic> parseddata) {
    Address(city: parseddata['city'], Country: parseddata['Country']);
  }
}
