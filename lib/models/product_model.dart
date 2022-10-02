import 'package:magnit_magazine/models/characteristics_model.dart';

class Product{
  final int id;
  final String name;
  final List<Characteristics> characteristics;

  const Product(this.id, this.name, this.characteristics);

  Map toMap(){
    List<int> characteristicsId = [];
    for (var element in characteristics) {characteristicsId.add(element.id);}
    return {
      'id': id,
      'name': name,
      'characteristics': characteristicsId
    };
  }
}