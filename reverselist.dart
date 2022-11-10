void main() {
  List A = [1, 2, 3];

  List B = [];
  int x = A.length;
  for (int i = 0; i < x; i++) {
    // print(A[i]);
    B.insert(0, A[i]);
  }
  print(B);
}
