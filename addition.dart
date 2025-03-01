import 'dart:io';
void main() {
  print('Enter first number: ');
  int firstNumber = int.parse(stdin.readLineSync()!);
  print('Enter second number: ');
  int secondNumber = int.parse(stdin.readLineSync()!);
  int sum = addition(firstNumber, secondNumber);
  print('The sum of $firstNumber and $secondNumber is $sum');
}

int addition(int a, int b) {
  return a + b;
} 
