import 'dart:io';

void main() {
  /**List A = [1, 2, 3, 4, 5];
  int x = int.parse(stdin.readLineSync()!);
  List b = A.sublist(0, x);
  List c = A.sublist(x, A.length);
  for (int i = 0; i < b.length; i++) {
    c.add(b[i]);
  }
  print(c); */

  // // int x = 3;
  // String? x = stdin.readLineSync();
  // int number = int.parse(x!);
  // List? Sam;
  // for (int i = 1; i < 8; i++) {
  //   Sam!.add(x);
  // }
  // print(Sam);

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

  // List D = [];
  // print(A);
  // print(b);
  // print(c);
  // c.insert(c.length, b);
  // print(c);
  // D.addAll(c);
  // print(D);
}
/**List A=[1,2,3,4,5];
     int x=3;
     List b=A.sublist(0,x);
   List c=A.sublist(x,A.length);
    List D=[];
   print('x=$x');
   print(A);
   print('b$b');
   print('c$c');
// //   c.insert(c.length,b);
//    print(c);
//    D.addAll(c);
//    print(D);
// //    c.add(b[i]);
   for (int i=0;i<b.length;i++){
     c.add(b[i]);
   }
//    print('c length${c.length}');
//    print('blength${b.length}');
//      c.add(b[0]);
//      c.add(b[1]);
//      c.add(b[2]);
   print(c); */
   /**void main() {
  
  List A=[1,2,3,4,5];
  int l=2;
 int r=l%A.length;
  
//   List b = A.sublist(0, r);
//   print('b$b');
//   List c = A.sublist(r, A.length);
//   print('c$c');  
//   for (int i = 0; i < b.length; i++) {
//     c.add(b[i]);
//   }
//   print(c);
// List 
  List X=[];
  List Y=[];
  for (int y=0;y<r;y++){
    X.add(A[y]);
  }
  for (int z=r;z<A.length;z++){
    Y.add(A[z]);
  } 
//   print(X);
//   print(Y);
  for(int z=0;z<X.length;z++){
    Y.add(X[z]);
  }
  print(Y);
 
//  int k=6;
//   num x=r%(A.length);
//   print(x);
} */