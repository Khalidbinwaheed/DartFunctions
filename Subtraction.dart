import 'dart:io';

void main() {
  print('Enter first number: ');
  int firstNumber = int.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  int secondNumber = int.parse(stdin.readLineSync()!);
  int difference = subtraction(firstNumber, secondNumber);
  print('The difference of $firstNumber and $secondNumber is $difference');
}

int subtraction(int a, int b) {
  return a - b;
}
