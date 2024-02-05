import 'dart:io';

void main() {
    //  Write your code here
  String input = stdin.readLineSync()!;
  int n = 0;

  for (int i = 0; i < input.length; i++) {
    if (i % 2 == 0) {
      if (input[i] == input[i].toLowerCase()) {
        n = 1;
      } else {
        n = 0;
        break;
      }
    } else {
      if (input[i] == input[i].toUpperCase()) {
        n = 1;
      } else {
        n = 0;
        break;
      }
    }
  }

  if (n == 1) {
    print("Yes");
  } else {
    print("No");
  }
}