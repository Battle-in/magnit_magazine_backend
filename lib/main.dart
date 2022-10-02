import 'package:jaguar/jaguar.dart';
import 'package:magnit_magazine/constants/store_models/characteristics.dart';
import 'package:magnit_magazine/constants/store_models/products.dart';
import 'package:magnit_magazine/constants/store_models/shops.dart';

main() async {
  final int port = 8080;
  final server = Jaguar(port: port);
  server.getJson('/api0.1/shops', _shopHandler);
  server.getJson('/api0.1/products', _productsHandler);
  server.getJson('/api0.1/characteristics', _characteristicsHandler);
  await server.serve();
  print('server started at: localhost:$port');
}

///handlers don't catch error about incorrect argument

dynamic _shopHandler(Context ctx){
  if (ctx.query.isEmpty){
    List<Map> shopsRes = [];
    for (var element in shops) {shopsRes.add(element.toMap());}
    return shopsRes;
  } else {
    int index = ctx.query.getInt('index', 0) as int;

    if (index < shops.length && index >= 0){
      return shops[index].toMap();
    } else {
      return {"error": "index bigger then shops length or smaller 0"};
    }
  }
}

dynamic _productsHandler(Context ctx){
  if (ctx.query.isEmpty){
    List<Map> productsRes = [];
    for (var element in products) {productsRes.add(element.toMap());}
    return productsRes;
  } else {
    int index = ctx.query.getInt('index', 0) as int;

    if (index < products.length && index >= 0){
      return products[index].toMap();
    } else {
      return {"error": "index bigger then products length or smaller 0"};
    }
  }
}

dynamic _characteristicsHandler(Context ctx){
  if (ctx.query.isEmpty){
    List<Map> characteristicsRes = [];
    for (var element in characteristics) {
      characteristicsRes.add(element.toMap());}
    return characteristicsRes;
  } else {
    int index = ctx.query.getInt('index', 0) as int;

    if (index < characteristics.length && index >= 0){
      return characteristics[index].toMap();
    } else {
      return {"error": "index bigger then characteristics length or smaller 0"};
    }
  }
}