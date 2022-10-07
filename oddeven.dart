/**Write a program to input an integer from user and print 1 if it is odd otherwise print 0.
Input 1: 5
Input 2: 1000
output 1: 1
output 2: 0 */
import 'dart:io';

void main(List<String> args) {
  String? userinput = stdin.readLineSync();
  var x = int.parse(userinput!);
  var output = (x % 2 == 0) ? 0 : 1;
  print(output);
}
