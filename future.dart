void main() {
  /**  var myFuture = Future((() {
    return 'hello';
  }));
  print('this run first');
  myFuture.then((value) => print(value));
  print('this also run before future');/**this run first
this also run before future
hello 

then returns a new future
*/*/
  // var myFuture = Future((() {}));
  // print('this run first');
  // myFuture
  //     .then((_) => print('runs first then'))
  //     .then((_) => print('second then'));
  // print('this also run before future');
  /**this run first
this also run before future
runs first then
second then */
  var myFuture = Future((() {}));
  print('this run first');
  myFuture.then((_) => print('runs first then')).catchError((error) {
    print(error);
  }).then((_) => print('second then')); //it will execute after the catch error
  print('this also run before future');
}
