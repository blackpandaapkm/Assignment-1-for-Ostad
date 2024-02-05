import 'dart:io';
 
void main() {
    // Write your dart code from here
    List<int> numbers = [];
  String input = stdin.readLineSync()!;

  List<String> equation = input.split(' ');


  int n =0;
  for (int i = 1; i < equation.length; i++) {
    if (equation[i] == '1') {
      n++;
    }
    
  }
  print("$n");

    
}