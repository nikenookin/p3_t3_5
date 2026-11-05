void main() {

  List cart = [
    {'name': 'Смартфон', 'category': 'Электроника', 'price': 45000.0},
    {'name': 'Футболка', 'category': 'Одежда', 'price': 1500.0},
    {'name': 'Наушники', 'category': 'Электроника', 'price': 5000.0},
    {'name': 'Книга', 'category': 'Образование', 'price': 800.0},
    {'name': 'Планшет', 'category': 'Электроника', 'price': 30000.0},
  ];

  print('=== АНАЛИЗАТОР КОРЗИНЫ ИНТЕРНЕТ-МАГАЗИНА ===\n');

  List electronics = cart
      .where((item) => item['category'] == 'Электроника')
      .toList();
  
  print('1. Товары из категории "Электроника":');
  electronics.forEach((item) => print('   - ${item['name']} (${item['price']} руб.)'));
  print('');

  List<String> productNames = cart
      .map((item) => item['name'].toString())
      .toList();
  
  print('2. Список названий товаров:');
  print('   $productNames\n');

  double totalPrice = cart.fold(
    0.0, 
    (sum, item) => sum + (item['price'] as double)
  );
  
  print('3. Общая стоимость корзины: $totalPrice руб.');
}