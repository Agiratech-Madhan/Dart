/**Question 3:
     Write a program to input two numbers(A & B) from user and print the maximum element among A & B in each line.
Input 1: 5,6
Input 2: 1000,10000
output 1: 6
output 2: 10000 */
import 'dart:io';

void main(List<String> args) {
  String? A = stdin.readLineSync();
  var x = int.parse(A!);
  String? B = stdin.readLineSync();
  var y = int.parse(B!);
  (x > y)
      ? print(x)
      : (x == y)
          ? print("numbers are equal")
          : print(y);
}
