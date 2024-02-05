import 'dart:io';

void main() {
  List<int> numbers = [];
  String input = stdin.readLineSync()!;

  List<String> equation = input.split(' ');

  int price = int.parse(equation[0]);
  int discount = int.parse(equation[1]);

  double disPrice = price - (price * discount / 100);

  print("Price: ${disPrice.toStringAsFixed(2)}");
}
