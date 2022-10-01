import 'package:magnit_magazine/constants/shops_addresses.dart';
import 'package:magnit_magazine/constants/store_models/products.dart';
import 'package:magnit_magazine/models/product.dart';
import 'package:magnit_magazine/models/shop.dart';
import 'dart:math';

List<Shop> shops = List<Shop>.generate(shopsAddresses.length,
        (index) => generateShopWithRandomProducts(index));

Shop generateShopWithRandomProducts(int index){
  Random random = Random();
  ///put in this variables random products
  List<Product> productsForShop = List.generate(random.nextInt(8),
          (index) => products[random.nextInt(8)]);
  print(productsForShop.toString());
  return Shop(index, shopsAddresses[index] ?? '', productsForShop);
}