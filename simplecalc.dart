import 'dart:io';

void main() {
  print('Enter first number: ');
  int firstNumber = int.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  int secondNumber = int.parse(stdin.readLineSync()!);
  int sum = addition(firstNumber, secondNumber);
  int difference = subtraction(firstNumber, secondNumber);
  int product = multiplication(firstNumber, secondNumber);
  double result = division(firstNumber.toDouble(), secondNumber.toDouble());
  print('The sum of $firstNumber and $secondNumber is $sum');
  print('The difference of $firstNumber and $secondNumber is $difference');
  print('The product of $firstNumber and $secondNumber is $product');
  print('The division of $firstNumber and $secondNumber is $result');
}

int addition(int a, int b) {
  return a + b;
}

int subtraction(int a, int b) {
  return a - b;
}

int multiplication(int a, int b) {
  return a * b;
}

double division(double a, double b) {
  return a / b;
}
