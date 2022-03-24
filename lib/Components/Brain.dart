import 'dart:math';

class Brain {
  Brain({this.height, this.weight});

  final height;
  final weight;
  double _bmi = 0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String healthstat() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String healthtip() {
    if (_bmi >= 25) {
      return 'You are overweight. EAT LESS';
    } else if (_bmi > 18.5) {
      return 'PERFECTO !!!';
    } else {
      return 'You are underweight.EAT MORE';
    }
  }
}
