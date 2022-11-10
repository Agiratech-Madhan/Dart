import 'dart:io';

void main() {
  final A = <int>[];
  print('enter length of the string');
  String? x = stdin.readLineSync();
  int k = int.parse(x!);

  for (int i = 0; i < k; i++) {
    int? input;
    input = int.parse(stdin.readLineSync() ?? '');
    A.add(input);
  }
  print(A);
  print('enter rotation');
  int r = int.parse(stdin.readLineSync()!);

  List b = A.sublist(0, r);
  List c = A.sublist(r, A.length);
  for (int i = 0; i < b.length; i++) {
    c.add(b[i]);
  }
  print(c);
}
