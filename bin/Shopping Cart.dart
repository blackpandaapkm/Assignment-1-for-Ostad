import 'dart:io';

void main() {
  // Write your dart code here
  String input = stdin.readLineSync()!;
  List<String> intput0 = input.split(' ');
  int? l1 = int.parse(intput0[0]);
  int? l2 = int.parse(intput0[1]);

  List<int> id = [101,202,303];
  List<int> price = [10,25,5];
  for(int i=0;i<id.length;i++){
    if(id[i]==l1){
      print(price[i]*l2);
    }
  }
}
