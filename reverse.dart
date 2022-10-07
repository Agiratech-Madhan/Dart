import 'dart:io';

void main(List<String> args) {
  String? num = stdin.readLineSync();
  // int? num3 = stdin.readIntSync();
  int x = int.parse(num!);
  int i = 1;
  while (x >= i) {
    print(x);
    x--;
  }
}
