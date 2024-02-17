import 'dart:io';
 
void main() {
    // Write your dart code from here
     List<int> numbers = [];
  String input = stdin.readLineSync()!;

  List<String> equation = input.split(' ');

  int? N = int.parse(equation[0]);
  int? A = int.parse(equation[1]);
  int? B = int.parse(equation[2]);
  int total = A+B;

  if(1 <= N && N <= 500 && A <= 500 && B <= 500 && 1 <= A && 1 <= B){
    if(N >= total ){
    print("Yes");
  }
  else{
    print("No");
  }

  }   
}