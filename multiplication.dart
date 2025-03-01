import 'dart:io';

void main() {
  print('Enter first number: ');
  int firstNumber = int.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  int secondNumber = int.parse(stdin.readLineSync()!);
  int product = multiplication(firstNumber, secondNumber);
  print('The product of $firstNumber and $secondNumber is $product');
}

int multiplication(int a, int b) {
  return a * b;
}
