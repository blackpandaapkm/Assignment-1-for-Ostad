import 'dart:io';

void main() {
  // Write your dart code here
  String input = stdin.readLineSync()!;
  List<String> intput0 = input.split(' ');
  int? l1 = int.parse(intput0[0]);

  List<String> fruit = ['Banana', 'Elderberry', 'Honeydew Melon', 'Apple', 'Mango','Nectarine','Orange','Raspberry','Tangerine'];
  List<int> id = [31231,43861,82678,23456,78901,98765,45678,67890,21098];
  for(int i=0;i<id.length;i++){
    if(id[i]==l1){
      print(fruit[i]);
    }
  }
}
