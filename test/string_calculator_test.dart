import 'package:flutter_test/flutter_test.dart';
import 'package:tdddemo/test_files/string_calculator.dart';

void main() {
  test('should return 0 for empty string', () {
    final calculator = StringCalculator();
    expect(calculator.add(''), 0);
  });

  test('should return the number itself for single number', () {
    final calculator = StringCalculator();
    expect(calculator.add('1'), 1);
  });

  test('should return sum of two comma-separated numbers', () {
    final calculator = StringCalculator();
    expect(calculator.add('1,5'), 6);
  });

  test('should return sum of multiple comma-separated numbers', () {
    final calculator = StringCalculator();
    expect(calculator.add('1,2,3,4,5'), 15);
  });

  test('should handle newlines as separators', () {
    final calculator = StringCalculator();
    expect(calculator.add('1\n2\n3'), 6);
  });

  test('should handle mixed newlines and commas', () {
    final calculator = StringCalculator();
    expect(calculator.add('1\n2,3'), 6);
  });

  test('should support custom delimiter', () {
    final calculator = StringCalculator();
    expect(calculator.add('//;\n1;2'), 3);
  });

  test('should throw exception for negative number', () {
    final calculator = StringCalculator();
    expect(
      () => calculator.add('-1'),
      throwsA(isA<Exception>().having(
        (e) => e.toString(),
        'message',
        contains('negative numbers not allowed -1'),
      )),
    );
  });
}

