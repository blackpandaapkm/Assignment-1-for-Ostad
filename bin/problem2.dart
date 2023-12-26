import 'dart:io';

void main() {
  // Write your dart code here
  String input = stdin.readLineSync()!;

  List<String> equation = input.split(' ');

  int? l1 = int.parse(equation[0]);
  int? r1 = int.parse(equation[1]);
  int? l2 = int.parse(equation[2]);
  int? r2 = int.parse(equation[3]);



  if(0 <= l1 && l1 <=900 && 10 <= r1 && r1 <= 1000 && l1<r1 && 1 <= l2 && l2 <= 901 && 2 <= r2 && r2 <= 902 && l1 < l2 && l2<r2 && r2 < r1 ){
    for(int i=l1;i<=r1;i++){
      if(i == l2){
        i=r2;
      }else{
        print(i);
      }

    }
  }

}