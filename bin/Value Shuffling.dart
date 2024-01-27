import 'dart:io';

void main() {
  List<int> numbers = [];
  List<int> latter = [];
  String input = stdin.readLineSync()!;
  String input1 = stdin.readLineSync()!;

  List<String> equation = input.split(' ');

  int? B = int.parse(equation[0]);
  int? C = int.parse(equation[1]);
  int? A = int.parse(equation[2]);

  for (int i = 0; i <= 2; i++) {
    if (input1[i] == 'A') {
      latter.add(A);
    } else if (input1[i] == 'B') {
      latter.add(B);
    } else if (input1[i] == 'C') {
      latter.add(C);
    }
  }
  print(latter.join(' '));
}
