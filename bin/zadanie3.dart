void main() {
  List<int> numbers = [2, -5, 8, -1, 10, 4];
  
  List<int> positiveNumbers = numbers.where((n) => n > 0).toList();
  
  print('Положительные числа: $positiveNumbers');
}