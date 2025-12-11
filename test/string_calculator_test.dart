import 'package:flutter_test/flutter_test.dart';
import 'package:tdddemo/test_files/string_calculator.dart';

void main() {
  test('should return 0 for empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });
}

