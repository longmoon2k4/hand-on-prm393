void main() {
  var name = 'Anh Long Đẹp Trai';
  var age = 20;

  String name_2 = 'Longkhongdeptrai';
  int age_2 = 21;

  double height = 1.65;
  bool isStudent = true;

  List<String> hobbies = ['Đọc sách', 'Du lịch', 'Lập trình'];

  Map<String, int> score = {'pt1': 8, 'pt2': 9, 'pt3': 7, 'pe': 10};

  Set<String> animal = {'Chó', 'Mèo', 'Chim', 'Cá'};

  // Các kiểu dữ liệu trong dart gồm có:
  // 1. String: kiểu dữ liệu chuỗi
  // 2. int: kiểu dữ liệu số nguyên
  // 3. double: kiểu dữ liệu số thực
  // 4. bool: kiểu dữ liệu boolean (true/false)
  // 5. List: kiểu dữ liệu danh sách
  // 6. Map: kiểu dữ liệu bản đồ (key-value)
  // 7. Set: kiểu dữ liệu tập hợp

  // Kiểu dữ liệu dynamic: kiểu dữ liệu động,
  // có thể thay đổi kiểu dữ liệu trong quá trình chạy chương trình

  void sayHello(String name) {
    print('Hello, $name!');
  }

  Never crash() {
    throw Exception("Con gà code dại");
  }

  Never runForever() {
    while (true) {
      print('Chạy mãi không dừng');
    }
  }

  Never jail(String message) {
    throw Exception(message);
  }

  void gotJail(int age) {
    if (age < 18) {
      jail('$age chưa đủ tuổi đi tù');
    }

    jail('Đi tù 99 năm');
  }

  Object obj = 'Hello, Dart!';

  var z = 'dart'; // Dùng var an toàn để check lỗi luôn nếu có
  // z = 123; // Lỗi vì z đã được xác định là String, không thể gán int vào

  // Kiểu đặc biệt là Record
  var person = (name: 'Long nè', age: 20);

  // Hàm
  ({bool success, String message}) login(String username, String password) =>
      (success: true, message: 'Đăng nhập thành công');

  var result = login('long', '123456');

  String emoji = '😀';

  String _text = 'Hello, Dart!';

  // print(emoji.runes.length);
  // print(result.success);
  // print(result.message);
  // print(person.name);
  // print(person.age);
  //print(z);
  // print((obj as String).length);
  // sayHello(name);
  // gotJail(14);
}
