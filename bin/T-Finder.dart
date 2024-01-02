import 'dart:io';

void main() {
  // Write your dart code here
  List<String>input = [];
  for(int i=0;i<10;i++){
    String input1 = stdin.readLineSync()!;
    input.add(input1);
  }
  //String input = stdin.readLineSync()!;
  //List<String> intput0 = input.split(' ');
  int counter=0;
  //print(input);
  for(int i=0;i<input.length;i++){
    for(int j=0;j<input[i].length;j++){
      if(input[i][j]=='T'){
        counter++;
        break;
      }
    }
  }
  print(counter);
}
