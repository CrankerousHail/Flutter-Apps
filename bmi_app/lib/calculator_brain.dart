import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});
  final int height;
  final int weight;

  double? _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi! >= 25) {
      return 'Over Weight';
    } else if (_bmi! > 18.5) {
      return 'Normal.';
    } else {
      return 'Under Weight';
    }
  }

  String interpretation() {
    if (_bmi! >= 25) {
      return 'You have Higher than normal body weight. Try to excercise more';
    } else if (_bmi! > 18.5) {
      return 'You have a normal body weight.';
    } else {
      return 'You have a lower than normal body weight';
    }
  }
}
