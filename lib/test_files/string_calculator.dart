class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    
    String delimiterPattern = r'[,\n]';
    String numbersToParse = numbers;
    
    if (numbers.startsWith('//')) {
      final newlineIndex = numbers.indexOf('\n');
      if (newlineIndex != -1) {
        final delimiter = numbers.substring(2, newlineIndex);
        delimiterPattern = RegExp.escape(delimiter);
        numbersToParse = numbers.substring(newlineIndex + 1);
      }
    }
    
    final parts = numbersToParse.split(RegExp(delimiterPattern));
    return parts.map((part) => int.parse(part)).reduce((a, b) => a + b);
  }
}

