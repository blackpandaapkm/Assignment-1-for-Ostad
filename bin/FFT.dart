import 'dart:io';

void main() {
  List<String> fftFullForms = [];
  List<String> strings = [];

  stdin.readLineSync()!.split(' ').forEach((element) {
    int n = int.parse(element);
    for (int i = 0; i < n; i++) {
      strings.add(stdin.readLineSync()!);
    }}

  );
  
    List<List<String>> result = [];
    int count = 0;

    for (int i = 0; i < strings.length; i++) {
      if (strings[i].startsWith('F')) {
        if (i + 1 < strings.length && strings[i + 1].startsWith('F')) {
          if (i + 2 < strings.length && strings[i + 2].startsWith('T')) {
            count++;
            result.add([]);
            result[count - 1].add(strings[i]);
            result[count - 1].add(strings[i + 1]);
            result[count - 1].add(strings[i + 2]);
            if(i + 2<strings.length){
                i += 2;
            }
            else{
                break ;
            }
            
          }
        }
      }
    }
  print(result.length);
  for (int i = 0; i < count; i++) {
    print(result[i].join(' '));
  }
}