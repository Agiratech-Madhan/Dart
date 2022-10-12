// void main(List<String> args) {
// int c = 2;
// num x = 10;
// while (x > 1) {
//   if (x % c == 0) {
//     print(c);
//     x = x / c;
//   } else
//     c++;
// }
// if (x > 1) {
// num y = x;
// for (int i = 1; i <= x; i++) {
//   if (x % i == 0) {
//     print(i);
//     x = x / i;
//   } else
//     continue;
// }
// print(y);
// }

// }

/**Question 1:
You are given an integer N you need to print all the Prime Numbers between 1 and N.
Prime numbers are numbers that have only 2 factors: 1 and themselves. For example, the first 5 prime numbers are 2, 3, 5, 7, and 11.
First and only line of input contains a single integer N.
Print all the prime numbers between between 1 and N each in a new line.
Example Input
Input 1:
5
Input 2:
10
Example Output
Output 1:
1  5
Output 2:
1 2 5 10 */
import 'dart:io';

void main(List<String> args) {
  // String? input = stdin.readLineSync();
  // num? x = num.parse(input!);
  num? x = int.parse(stdin.readLineSync()!);
  // int count = 0;
  List<int> output = [];
  // print(1);
  for (int i = 1; i <= x; i++) {
    if (x % i == 0)
      output.add(i);
    // count++;
    else
      continue;
  }
  print(output.length);
}
