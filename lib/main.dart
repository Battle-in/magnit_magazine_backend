import 'package:jaguar/jaguar.dart';
import 'package:magnit_magazine/models/characteristics.dart';
import 'package:magnit_magazine/models/product.dart';
import 'package:magnit_magazine/models/shop.dart';

import 'package:magnit_magazine/constants/store_models/shops.dart';

main() async {
  final int port = 8080;
  final server = Jaguar(port: port);
  server.get('/api0.1/stores', (ctx) => shops);
  server.get('/api0.1/magazines/:index',
          (ctx) => magazinesAddresses[ctx.query.getInt('index', 0) ?? 0]);
  server.getJson('/person', (context) => Shop(19, 'jeca', [Product(7, 'cola', Characteristics(7, 2))]));
  print('server started at: localhost:$port');
  await server.serve();
}

class Person{
  String name = 'name';
  int age = 20;

  Person(this.name, this.age);

  @override
  String toString() {
    return 'person: {name: "$name", age: $age}';
  }
}