//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//
import 'dart:convert';

import 'package:lap_03/models/user.dart';

class UserRepository {
  // 1. Điểm mới là dấu ''' -> Có thể xuống dòng tùy ý mà không cần quan tâm đến các dấu nhắc lệnh
  // Nhớ là json dùng " thay vì dùng '
  String apiRespose = '''
  [
  {"name" : "Hà Vũ Long", "email" : "longhv20@fpt.vn"},
  {"name" : "Smile", "email" : "longhvhe186065@fpt.edu.vn"}
  ] 
  ''';

  Future<List<User>> getAllUser() async {
    print('Đang tải danh sách sinh viên...');
    await Future.delayed(const Duration(seconds: 2));
    // Giả sử bên server trả về ko phải là json mà là text thì phải decode -> json trước
    List<dynamic> rawResponse = jsonDecode(apiRespose);

    // Sau khi đã có json thì chuyển đổi thành list và map vào user
    List<User> userList = [];
    for (var e in rawResponse) {
      userList.add(User.fromJson(e));
    }
    return userList;
  }
}
