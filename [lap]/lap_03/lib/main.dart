//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'dart:async';

import 'package:lap_03/dontknow/setting.dart';
import 'package:lap_03/models/product.dart';
import 'package:lap_03/models/user.dart';
import 'package:lap_03/repository/productRepository.dart';
import 'package:lap_03/repository/userRepository.dart';

Future<void> main() async {
  print('--------------------Bài tập 1--------------------');
  final repo = ProductRepository();

  // Lắng nghe xem có vật phẩm nào mới không
  final toastMessgae = repo.liveAdded().listen((p) {
    print('Sản phẩm mới: $p');
  });

  await repo.addProduct(Product(id: 1, name: 'Long', price: 20.56));
  await repo.addProduct(Product(id: 2, name: 'Smile', price: 104.4));
  await Future.delayed(const Duration(seconds: 1));
  print('');
  print('Danh sách vật phẩm');
  final p = await repo.getAll();
  for (Product i in p) {
    await Future.delayed(const Duration(seconds: 1));
    print(i);
    await Future.delayed(const Duration(seconds: 1));
  }

  await toastMessgae.cancel();
  repo.dispose();
  print('-------------------------------------------------');

  print('--------------------Bài tập 2--------------------');
  var userRepo = UserRepository();

  List<User> userList = await userRepo.getAllUser();

  for (var i in userList) {
    await Future.delayed(const Duration(seconds: 1));
    print('${i.name} có email: ${i.email}');
    await Future.delayed(const Duration(seconds: 1));
  }

  print('-------------------------------------------------');

  print('--------------------Bài tập 3--------------------');
  //Mindset của microtask and event queues

  // Dart là ngôn ngữ single thread lên dart dùng cơ chế event loop (Xử lý các sự kiện)
  // Event loop có 2 hàng đợi với trọng số ưu tiên khác nhau
  // Mircro task  queue -> event queue
  // xử lý hết micro -> Gọi 1 thằng trong event ra -> Kiểm tra micro có gì mới không ----có---> xử lý micro
  //                                    |<---------------------không---------------<|

  print('[1]. Bước 1');
  print('[2]. Bước 2');

  scheduleMicrotask(() {
    print('[3]. Bước 3');
    print('[4]. Bước 4');
  });

  await Future<void>.delayed(Duration.zero);
  print('[5]. Bước 5');
  print('-------------------------------------------------');

  print('--------------------Bài tập 4--------------------');

  final Stream<int> listNumber = Stream.fromIterable([1, 2, 3, 4, 5]);
  final Stream<int> outNumber = listNumber
    .where((e) => e % 2 == 0)
    .map((e) => e * e);
  
  outNumber.listen(
    (value) {
      print('Giá trị mới: $value');
    },
    onDone: () => {print('Đã lấy hết danh sách')}
  );
    
  await Future.delayed(Duration.zero);
  print('-------------------------------------------------');
  print('--------------------Bài tập 5--------------------');
  var a = Setting.setting_2('Light'); // Nhà máy trả về _instance trong kho 
  var b = Setting.setting_2('Dart'); // Nhà máy lại trả về đúng _instance đó
  // a.theme = 'Light';
  // print(identical(a, b));
  print(a.theme);
  print('-------------------------------------------------');
}
