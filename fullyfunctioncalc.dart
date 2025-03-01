import 'dart:io';

void main() {
  calculator();
}

void calculator() {
  bool keepRunning = true;

  while (keepRunning) {
    print("\nSelect operation:");
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    print("4. Divide");
    print("5. Exit");

    stdout.write("Enter choice (1/2/3/4/5): ");
    String? choice = stdin.readLineSync();

    if (choice == null || choice.isEmpty) {
      print("Invalid input. Please enter a number between 1 and 5.");
      continue; // Restart the loop
    }

    int? operation;
    try {
      operation = int.parse(choice);
      if (operation < 1 || operation > 5) {
        print("Invalid input. Please enter a number between 1 and 5.");
        continue;
      }
    } catch (e) {
      print("Invalid input. Please enter a number.");
      continue; // Restart the loop if the input is not a number
    }


    if (operation == 5) {
      keepRunning = false;
      print("Exiting calculator.");
      break; // Exit the loop and the program
    }

    stdout.write("Enter first number: ");
    String? num1Str = stdin.readLineSync();
    double? num1 = _parseNumber(num1Str);
    if (num1 == null) continue; // Go back to the beginning of the loop if parsing failed

    stdout.write("Enter second number: ");
    String? num2Str = stdin.readLineSync();
    double? num2 = _parseNumber(num2Str);
    if (num2 == null) continue;  // Go back to the beginning of the loop if parsing failed

    double? result;

    switch (operation) {
      case 1:
        result = add(num1, num2);
        break;
      case 2:
        result = subtract(num1, num2);
        break;
      case 3:
        result = multiply(num1, num2);
        break;
      case 4:
        if (num2 == 0) {
          print("Error: Division by zero.");
          continue; // Go to the next iteration of the loop
        }
        result = divide(num1, num2);
        break;
    }

    if (result != null) {
      print("Result: $result");
    }
  }
}

double? _parseNumber(String? input) {
  if (input == null || input.isEmpty) {
    print("Error: Input cannot be empty.");
    return null;
  }
  try {
    return double.parse(input);
  } catch (e) {
    print("Error: Invalid number format.");
    return null;
  }
}

double add(double a, double b) {
  return a + b;
}

double subtract(double a, double b) {
  return a - b;
}

double multiply(double a, double b) {
  return a * b;
}

double divide(double a, double b) {
  return a / b;
}