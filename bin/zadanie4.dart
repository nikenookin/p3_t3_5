void main() {
  List<String> words = ['apple', 'banana', 'kiwi'];
  
  List<int> wordLengths = words.map((word) => word.length).toList();
  
  print('Длины слов: $wordLengths');
}