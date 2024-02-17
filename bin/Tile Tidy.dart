import 'dart:io';
 
void main() {
    // Write your dart code from here
    int n = int.parse(stdin.readLineSync()!);
    String s = stdin.readLineSync()!;
    int j = 0;
    for(int i=0;i<n-1;i++){
        if(s[i]==s[i+1]){
            j++;
        }
    }
    print(j);
    
}