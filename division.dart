import 'dart:io';

void main() {
  print('Enter first number: ');
  var firstNumber = double.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  var secondNumber = double.parse(stdin.readLineSync()!);
  double result = division(firstNumber, secondNumber);
  print('The division of $firstNumber and $secondNumber is $result');
}

double division(double a, double b) {
  return a / b;
}
