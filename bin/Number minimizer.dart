import 'dart:io';

void main() {
  String input = stdin.readLineSync()!;

  List<String> equation = input.split(' ');

  BigInt S = BigInt.parse(equation[0]);
  int K = int.parse(equation[1]);

 String sString = S.toString();
  List<String> sList = sString.split('');


  if (sList[0] != '1') {
    sList[0] = '1';
    K = K - 1;
  }


  for (int i = 1; i < sList.length; i++) {
    if (K > 0 && sList[i] != '0') {
      sList[i] = '0';
      K = K - 1;
    }
    if (K == 0) {
      break;
    }
  }

  BigInt result = BigInt.parse(sList.join(''));
  print("Min = $result");
}