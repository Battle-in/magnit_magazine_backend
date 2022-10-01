import 'package:magnit_magazine/models/characteristics.dart';

class Product{
  final int id;
  final String name;
  final Characteristics characteristics;

  const Product(this.id, this.name, this.characteristics);

  Map toMap(){
    return {
      'id': id,
      'name': name,
      'characteristics': characteristics.id
    };
  }
}