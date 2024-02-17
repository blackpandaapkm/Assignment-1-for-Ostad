import 'dart:io';
 
void main() {
    // Write your dart code from here
  String input = stdin.readLineSync()!;

  List<String> equation = input.split(' ');

    int? W = int.parse(equation[0]);
    int? S = int.parse(equation[1]);
    int? C = int.parse(equation[2]);

    if( 200 <= W && W <= 300 && S >= 50 && C >= 150){
      print("Yes");
    }else{
      print("No");
    }

}