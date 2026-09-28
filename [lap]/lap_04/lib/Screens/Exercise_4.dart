import 'package:flutter/material.dart';

// 1. Dùng StatefulWidget để lưu trạng thái của công tắc Sáng/Tối
class Exercise4 extends StatefulWidget {
  const Exercise4({super.key});

  @override
  State<Exercise4> createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise4> {
  // Biến lưu trạng thái: false là sáng, true là tối
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    // 2. MaterialApp là gốc rễ, nơi chứa thuộc tính themeMode
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Định nghĩa bảng màu Sáng
      theme: ThemeData.light(useMaterial3: true),

      // Định nghĩa bảng màu Tối
      darkTheme: ThemeData.dark(useMaterial3: true),

      // Công tắc quyết định mặc bộ nào dựa vào biến _isDarkMode
      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,

      // 3. Khung xương Scaffold của màn hình
      home: Scaffold(
        appBar: AppBar(title: const Text('Theme & Scaffold Demo')),
        body: const Center(
          child: Text(
            'Bấm vào nút ở góc để đổi màu nhé!',
            style: TextStyle(fontSize: 18),
          ),
        ),

        // 4. FloatingActionButton (Nút nổi)
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // Lật ngược trạng thái và báo cho Flutter vẽ lại UI
            setState(() {
              _isDarkMode = !_isDarkMode;
            });
          },
          // Đổi icon tương ứng: Đang tối thì hiện hình mặt trời, đang sáng hiện mặt trăng
          child: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
        ),
      ),
    );
  }
}
