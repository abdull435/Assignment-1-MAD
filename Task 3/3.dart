import 'dart:io';

void main() {
  stdout.write("Enter number for pyramid: ");
  int? number = int.parse(stdin.readLineSync()!);

  for (int i = 1; i <= number; i++) {
    for (int y = 1; y <= i; y++) {
      stdout.write("$y "); 
    }
    print(""); 
  }
}
