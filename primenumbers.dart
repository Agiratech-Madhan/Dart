/**
 * Question 1:
You are given an integer N you need to print all the Prime Numbers between 1 and N.
Prime numbers are numbers that have only 2 factors: 1 and themselves. For example, the first 5 prime numbers are 2, 3, 5, 7, and 11.
First and only line of input contains a single integer N.
Print all the prime numbers between between 1 and N each in a new line.
Example Input
Input 1:
5
Input 2:
10
Example Input
Input 1:
5
Input 2:
10
 */
import 'dart:io';

void main(List<String> args) {
  // List<int> sam = [];
  String? x = stdin.readLineSync();
  int number = int.parse(x!);

  for (int n = 2; n <= number; n++) {
    if (isPrime(n)) {
      print(n);
      // sam.add(n);
    }
  }
  // print(sam.length);
}

bool isPrime(int num) {
  for (int i = 2; i <= num / i; ++i) {
    if (num % i == 0) {
      return false;
    }
  }
  return true;
}
