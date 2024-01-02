import 'dart:io';

void main() {
  // Write your dart code from here
  String input = stdin.readLineSync()!;
  List<String> intput0 = input.split(' ');
  int? s = int.parse(intput0[0]);
  int? e = int.parse(intput0[1]);

  int count =0;
  if(0<=s && s<=23 && 0<=e && e<=23){
    count=24-s+e;
    if(count>24){
      count=e-s;
    }
  }

  print(count);

}