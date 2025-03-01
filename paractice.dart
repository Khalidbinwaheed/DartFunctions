void main() {
  // Define a list of integers
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Call the function and print the result
  List<int> evenNumbers = filterEvenNumbers(numbers);
  print('Even numbers: $evenNumbers');
}

// Function that filters even numbers from a list
List<int> filterEvenNumbers(List<int> numbers) {
  List<int> evenNumbers = [];
  for (int number in numbers) {
    if (number % 2 == 0) {
      evenNumbers.add(number);
    }
  }
  return evenNumbers;
}
