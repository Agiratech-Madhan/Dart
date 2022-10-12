/**Implement a program that takes two positive integers A and B in the input and prints their LCM.
Definition of LCM : The Least Common Multiple or LCM of two numbers say A and B, is denoted as LCM (A,B). And the LCM is the smallest or least positive integer that is divisible by both A and B.
Input Format
Two space separated integers A and B in the input.
Output Format
Output a single integer that is the LCM of A and B.
Example Input
Input 1:
5 10
Input 2:
2 3
Example Output
Output 1:
10
Output 2:
6 

a*b/gcd
*/
import 'dart:io';

void main(List<String> args) {
  String? input1 = stdin.readLineSync();
  String? input2 = stdin.readLineSync();

  int x = int.parse(input1!);
  int y = int.parse(input2!);
  num? z;
  for (int i = 1; i <= x && i <= y; i++) {
    if (x % i == 0 && y % i == 0) {
      z = i;
    }
  }
  print((x * y) / z!);
}
