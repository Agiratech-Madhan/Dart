/**Ques 1:
Write a program to print all odd numbers from 1 to N where you have to take N as input from user. Here N is inclusive.
Input 1:
5
Input 2:
10
Output 1:
1 3 5
out put 2:
1 3 5 7 9 */
import 'dart:io';

void main() {
  String? x = stdin.readLineSync();
  int y = int.parse(x!);
  int i = 1;
  // bool con = (i <= y);
  while (i <= y) {
    if (i % 2 != 0) {
      print(i);
      i++;
    } else {
      i++;
      continue;
    }
  }
}
