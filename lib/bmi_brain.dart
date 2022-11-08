import 'dart:math';

class BMICalculator {
  BMICalculator({required this.height1, required this.weight1});

  final int? height1;
  final int? weight1;
  double? _bmi;

  String getCalculate() {
    _bmi = weight1! / pow(height1! / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getResultText() {
    if (_bmi! >= 25.0) {
      return 'Overweight';
    } else if (_bmi! >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String feedbackText() {
    if (_bmi! >= 25.0) {
      return 'You have higher then normal body weight.\n try to do more exercise.'; //
    } else if (_bmi! >= 18.5) {
      return 'You have normal body weight.\nGood job!';
    } else {
      return 'You have lower then normal body weight.\neat more!';
    }
  }
}
