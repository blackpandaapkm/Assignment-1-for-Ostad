import 'dart:io';

void main() {
  // Write your dart code from here
  List<int> numbers = [];
  String input = stdin.readLineSync()!;

  List<String> equation = input.split(' ');

  int? N = int.parse(equation[0]);
  int? X = int.parse(equation[1]);

  double T1 = (N * (N - 1) / 2) + (N * X) ;
  int T = T1.toInt();
  
  print(T);

}