import 'dart:io';
// import 'dart:svg';

void main(List<String> args) {
  // print("enter a number");
  String? num = stdin.readLineSync();
  int x = int.parse(num!);
  int i = 1;

  // while (i <= x) {
  //   print(i);
  //   i++;
  // }
  for (; i <= x; i++) {
    print(i);
  }
}
