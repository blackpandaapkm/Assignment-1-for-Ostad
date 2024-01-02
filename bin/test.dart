import 'dart:io';

void main() {
  stdout.write("Enter a list of animals separated by spaces: ");
  List<String> animals = [];
  while (true) {
    String inputLine = stdin.readLineSync()!;
    if (inputLine.length == 10) {
      break;
    }
    animals.add(inputLine);
  }
 print(animals);
}