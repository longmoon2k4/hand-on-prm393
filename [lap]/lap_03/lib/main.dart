//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:lap_03/models/product.dart';
import 'package:lap_03/repository/productRepository.dart';

Future<void> main() async{
  print('--------------------Bài tập 1--------------------');
  final repo = ProductRepository();

  // Lắng nghe xem có vật phẩm nào mới không
  final toastMessgae = repo.liveAdded().listen((p) {
    print('Sản phẩm mới: $p');
  });

  await repo.addProduct(Product(id: 1, name: 'Long', price: 20.56));
  await repo.addProduct(Product(id: 2, name: 'Smile', price: 104.4));
  print('');
  print('Danh sách vật phẩm');
  final p = await repo.getAll();
  for (Product i in p) {
    print(i);
  }
  
  await toastMessgae.cancel();
  repo.dispose();
  print('-------------------------------------------------');
}