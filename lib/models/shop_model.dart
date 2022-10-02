import 'package:magnit_magazine/models/product_model.dart';

class Shop{
  final int id;
  final String name;
  final List<Product> products;

  const Shop(this.id, this.name, this.products);

  Map toMap(){
    var productsId =
      List.generate(products.length, (index) => products[index].id);
    return {
      'id': id,
      'name': name,
      'products': productsId
    };
  }
}