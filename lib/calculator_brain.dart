import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight}) {
    bmi = double.parse(calculateBMI());
  }

  final int height;
  final int weight;
  late double bmi;

  String calculateBMI() {
    return (weight / pow(height / 100, 2)).toStringAsFixed(1);
  }

  String getResult() {
    if (bmi >= 25) {
      return 'Overweight';
    } else if (bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getMessage1() {
    if (bmi >= 25) {
      return 'You should eat less.';
    } else if (bmi > 18.5) {
      return 'Keep it going!';
    } else {
      return 'You should eat more!';
    }
  }

  String getMessage2() {
    if (bmi >= 25) {
      return 'Train more. Walk more. Run more.';
    } else if (bmi > 18.5) {
      return 'Maintain your body weight.';
    } else {
      return 'Time to buff some more.';
    }
  }
}
