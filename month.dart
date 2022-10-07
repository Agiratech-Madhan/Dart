/*Write a program to input an integer(A) from user and print the Ath month of the year.
Months list: {January, February, March, April, May, June, July, August, September, October, November, December}
Input 1: 1
Input 2: 6
output 1: January
output 2: June */
import 'dart:io';
// import 'dart:svg';

void main(List<String> args) {
  var months = {
    1: 'January',
    2: 'February',
    3: 'March',
    4: 'April',
    5: 'May',
    6: 'June',
    7: 'July',
    8: 'August',
    9: 'September',
    10: 'October',
    11: 'November',
    12: 'December'
  };
  String? userinput = stdin.readLineSync();
  var x = int.parse(userinput!);
  // print("enter month");
  (x == 0)
      ? print("enterbetween 1 to 12")
      : x <= 12
          ? print(months[x])
          : print("enterbetween 1 to 12");
}
