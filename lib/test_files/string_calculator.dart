class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    final parts = numbers.split(RegExp(r'[,\n]'));
    return parts.map((part) => int.parse(part)).reduce((a, b) => a + b);
  }
}

