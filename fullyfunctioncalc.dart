import 'dart:io';

void main() {
  CalculatorApp().run();
}

class CalculatorApp {
  void run() {
    bool keepRunning = true;

    while (keepRunning) {
      _displayMenu();
      int? operation = _getOperationChoice();

      if (operation == null)
        continue; // Input validation handled in _getOperationChoice
      if (operation == 5) {
        keepRunning = false;
        _displayExitMessage();
        break;
      }

      double? num1 = _getNumberInput("Enter first number: ");
      if (num1 == null) continue;

      double? num2 = _getNumberInput("Enter second number: ");
      if (num2 == null) continue;

      double? result = _performCalculation(operation, num1, num2);
      if (result != null) {
        _displayResult(result);
      }
    }
  }

  void _displayMenu() {
    print("\n--- Calculator ---");
    print("1. Add");
    print("2. Subtract");
    print("3. Multiply");
    print("4. Divide");
    print("5. Exit");
    print("------------------");
  }

  int? _getOperationChoice() {
    stdout.write("Enter choice (1/2/3/4/5): ");
    String? choice = stdin.readLineSync();

    if (choice == null || choice.isEmpty) {
      _displayErrorMessage(
        "Invalid input. Please enter a number between 1 and 5.",
      );
      return null;
    }

    try {
      int operation = int.parse(choice);
      if (operation < 1 || operation > 5) {
        _displayErrorMessage(
          "Invalid input. Please enter a number between 1 and 5.",
        );
        return null;
      }
      return operation;
    } catch (e) {
      _displayErrorMessage("Invalid input. Please enter a number.");
      return null;
    }
  }

  double? _getNumberInput(String prompt) {
    stdout.write(prompt);
    String? input = stdin.readLineSync();
    return _parseNumber(input);
  }

  double? _parseNumber(String? input) {
    if (input == null || input.isEmpty) {
      _displayErrorMessage("Error: Input cannot be empty.");
      return null;
    }
    try {
      return double.parse(input);
    } catch (e) {
      _displayErrorMessage("Error: Invalid number format.");
      return null;
    }
  }

  double? _performCalculation(int operation, double num1, double num2) {
    switch (operation) {
      case 1:
        return _add(num1, num2);
      case 2:
        return _subtract(num1, num2);
      case 3:
        return _multiply(num1, num2);
      case 4:
        if (num2 == 0) {
          _displayErrorMessage("Error: Division by zero.");
          return null;
        }
        return _divide(num1, num2);
      default:
        _displayErrorMessage(
          "Invalid operation.",
        ); // Should not happen, but good practice
        return null;
    }
  }

  double _add(double a, double b) => a + b;
  double _subtract(double a, double b) => a - b;
  double _multiply(double a, double b) => a * b;
  double _divide(double a, double b) => a / b;

  void _displayResult(double result) {
    print("Result: $result");
  }

  void _displayErrorMessage(String message) {
    print("ERROR: $message");
  }

  void _displayExitMessage() {
    print("Exiting calculator. Goodbye!");
  }
}
