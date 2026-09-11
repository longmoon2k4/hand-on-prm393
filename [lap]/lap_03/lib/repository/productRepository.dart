//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'dart:async';

import 'package:lap_03/models/product.dart';

class ProductRepository {
  // Giả sử lấy được toàn bộ vật phẩm rồi
  final List<Product> inventory = [];

  final StreamController<Product> controller =
      StreamController<Product>.broadcast(sync: true);

  Future<void> addProduct(Product p) async{
    await Future.delayed(const Duration(seconds: 1));
    inventory.add(p);
    controller.add(p);
  }

  Future<List<Product>> getAll() async {
    return inventory;
  }

  Stream<Product> liveAdded() {
    return controller.stream;
  }

  void dispose() {
    controller.close();
  }
}
