//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//
void main() {
  void exercise_01() {
    print('--------------------Bài tập 1--------------------');
    String playerName = 'Smile';
    int health = 100;
    double runSpeed = 2.8;
    bool isDead = false;
    String enemyName = 'Tạch PE';
    Set<String> knownEnemies = {'Tạch FE', 'Tạch PE', 'Liệt tay'};
    List<String> inventory = ['Quần Đùi', 'Áo gió', 'Kiếm cùn'];
    Map<String, int> damageByEnemy = {
      'Tạch FE': 60,
      'Tạch PE': 40,
      'Liệt tay': 99,
    };
    Map<String, double> location = {'x': 619.20, 'y': 200.12, 'z': 10};

    final bool isKnownEnemy = knownEnemies.contains(enemyName);
    final int receivedDamage = isKnownEnemy ? damageByEnemy[enemyName] ?? 0 : 0;

    health -= receivedDamage;
    isDead = health <= 0;
    print('Tên người chơi: $playerName');
    print('Tốc độ di chuyển: ${runSpeed}m/s');
    print(
      'đã bị tấn công bởi $enemyName, mất $receivedDamage HP và còn $health HP',
    );
    print(
      'Người chơi ${isDead ? 'đã chết' : 'còn sống'} ở vị trí '
      '${location['x']}, ${location['y']}, ${location['z']}',
    );
    print(
      '$enemyName ${isKnownEnemy ? 'thuộc' : 'không thuộc'} danh sách quái đã biết',
    );
    print('Trang bị: ${inventory.join(', ')}');
    print('-------------------------------------------------');
  }
  // ───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

  void exercise_02() {
    print('--------------------Bài tập 2--------------------');
    // Làm việc với LIST
    List<int> totalScore = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
    print('Dãy số ban đầu $totalScore');
    totalScore.add(8);
    print('Dãy số sau khi thay đổi: $totalScore');
    totalScore.remove(8);
    print('Dãy số sau khi xóa giá trị 8: $totalScore');

    var sum = 0;
    for (final element in totalScore) {
      sum += element;
    }

    bool handOn = (sum > 0 && sum == 55) ? true : false;
    print('Hiện tại lớp : ${handOn ? 'Đủ đầu điểm' : 'Thiếu đầu điểm'}');
    print('Lớp hiện tại có ${totalScore.length} đầu điểm');
    print('Tổng của dãy số: $sum');

    // Làm việc với SET
    Set<String> seeWhatSee = {'White', 'Yellow', 'Red', 'Nickga', 'White'};
    print('Danh sách các mức độ safe: $seeWhatSee');

    seeWhatSee.add('Red');
    print('Danh sách sau khi thêm 1 màu đã có trong danh sách: $seeWhatSee');

    seeWhatSee.remove('Red');
    print('Danh sách sau khi loại bỏ màu đỏ: $seeWhatSee');

    // Làm việc với MAP
    Map<String, dynamic> position = {'x': 0, 'y': 0, 'z': 0};
    print('Map ban đầu: $position');
    position['t'] = 0;
    print('Map sau khi thêm 1 giá trị: $position');
    position.remove('t');
    print('Map sau khi xóa 1 giá trị: $position');
    print('-------------------------------------------------');
  }

  void exercise_03() {
    print('--------------------Bài tập 3--------------------');
    double handSome = 8.5;
    if (handSome > 8.0) {
      print('Bạn đang rất đẹp trai với điểm số $handSome');
    } else {
      if (handSome > 7.0) {
        print('Cố hơn tí nữa là đủ đẹp trai rồi $handSome');
      } else {
        print('Xấu zai không có tội, tội là ở bạn thân');
      }
    }

    int dontUseThisVariableIfYouWantToBeFired = 3;
    switch (dontUseThisVariableIfYouWantToBeFired) {
      case 1:
        print('Bạn đang ở mức độ 1');
        break;
      case 2:
        print('Bạn đang ở mức độ 2');
        break;
      case 3:
        print('Bạn đang ở mức độ 3');
        break;
      default:
        print('Bạn đang ở mức độ không xác định');
    }

    List<String> services = ['Auth', 'Payment', 'other'];
    // basic
    for (int i = 0; i < services.length; i++) {
      print('$i: ${services[i]}');
    }
    print('--------');
    // for-in
    for (var i in services) {
      print('$i');
    }
    print('--------');
    // foreach
    services.forEach((element) => print(element));
    print('--------');
    // Cách viết đầy đủ
    int calculate(int a, int b) {
      return a + b;
    }

    print('Kết quả dùng hàm đầy đủ: ${calculate(10, 20)}');

    // Arrow function tương đương với hàm calculate ở trên.
    int calculateWithArrow(int a, int b) => a + b;
    print('Kết quả dùng arrow function: ${calculateWithArrow(10, 20)}');
    print('-------------------------------------------------');
  }

  exercise_01();
  exercise_02();
  exercise_03();
}
