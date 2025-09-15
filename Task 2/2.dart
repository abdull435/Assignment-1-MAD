import 'dart:io';

void main() {
  stdout.write("Enter Name: ");
  String? name = stdin.readLineSync();
  stdout.write("Enter Age: ");
  int? age = int.parse(stdin.readLineSync()!);

  if (age < 18) {
    stdout.write("Sorry $name, you are not eligible to register.");
  } else {
    stdout.write("How many numbers you wants to enter: ");
    int? totalNumber = int.parse(stdin.readLineSync()!);
    List<int> numbers = [];

    for (int i = 0; i<totalNumber; i++) {
      stdout.write("Enter ${i+1} number: ");
      int? num = int.parse(stdin.readLineSync()!);
      numbers.add(num);
    }

    int even = 0;
    int odd = 0;
    int largest = numbers[0];
    int smallest = numbers[0];

    for (int num in numbers) {
      if (num % 2 == 0) {
        even += num;
      } else {
        odd += num;
      }

      if (num > largest) {
        largest = num;
      }

      if (num < smallest) {
        smallest = num;
      }
    }

    print("Results:");
    print("Sum of even numbers: $even");
    print("Sum of odd numbers: $odd");
    print("Largest number: $largest");
    print("Smallest number: $smallest");
    
  }
}
