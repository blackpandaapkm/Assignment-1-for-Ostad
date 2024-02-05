import 'dart:io';

void main() {
  List<int> numbers = [];
  String input = stdin.readLineSync()!;

  List<String> equation = input.split(' ');

  int wheels = int.parse(equation[0]);
  int body = int.parse(equation[1]);
  int figures = int.parse(equation[2]);

  int n = 0;

  while (wheels >= 4 && body >= 1 && figures >= 2) {
    n++;
    wheels -= 4;
    body -= 1;
    figures -= 2;
  }

  print('$n');
}
