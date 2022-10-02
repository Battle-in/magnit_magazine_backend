import 'package:magnit_magazine/constants/store_models/characteristics.dart';
import 'package:magnit_magazine/models/product_model.dart';

///associate with constants/store_models/characteristics.dart
final List<Product> products = [
  Product(0, 'Сыр', [characteristics[0], characteristics[2]]),
  Product(1, 'Молоко', [characteristics[2], characteristics[3]]),
  Product(2, 'Хлеб', [characteristics[1]]),
  Product(3, 'Масло полсолнечное', [characteristics[3]]),
  Product(4, 'Масло сливочное', [characteristics[1]]),
  Product(5, 'Кетчуп', [characteristics[1]]),
  Product(6, 'Майонез', [characteristics[1], characteristics[2]]),
  Product(7, 'Курица', [characteristics[3], characteristics[4], characteristics[5]]),
  Product(8, 'Макароны', [characteristics[2], characteristics[3]]),
  Product(9, 'Сосиски', [characteristics[4], characteristics[5]])
];