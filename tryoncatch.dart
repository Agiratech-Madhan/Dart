class OwnHttpException implements Exception {
  final message;

  OwnHttpException({required this.message});
  @override
  String toString() {
    print('ownwxceptions message $message');
    return message;
    // return super.toString(); //Instance of exception
  }
}

void main(List<String> args) {
  var x;
  if (x == 'message') {
    throw OwnHttpException(
        message: ' responseData[' 'error' '][' 'message' ']');
  }
}
// class hello{
//     try {
//       if (true){
//         print('dfsf');
//       }
//     } on OwnHttpException catch (error) {
//       print('error message from own$error');
//       var errorMessage = 'Authentication failed';
//       // var errorMessage;
//       if ((error.toString()).contains('EMAIL_EXISTS')) {
//         errorMessage = 'This email address is already in use. ';
//       } else if ((error.toString()).contains('INVALID_EMAIL')) {
//         errorMessage = 'This is not a valid email address';
//       } else if ((error.toString()).contains('WEAK_PASSWORD')) {
//         errorMessage = 'This password is too weak. ';
//       } else if ((error.toString()).contains('EMAIL_NOT_FOUND ')) {
//         errorMessage = ' Could not find a user with that email. ';
//       } else if ((error.toString()).contains('INVALID_PASSWORD')) {
//         errorMessage = ' Invalid password ';
//       }
//       // _showDialog(errorMessage);
//     } catch (error) {
//       const errorMessage = 'Could not authenticate';
//       _showDialog(errorMessage);
//     }
// }





// try {

// }
// Catch()
// finally