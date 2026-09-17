//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:flutter/material.dart';
import 'package:lap_04/mainMenu.dart';

class Exercise01 extends StatelessWidget{
  const Exercise01({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Khi navigate đến đây thì sẽ có 1 nút back, ở đây mình sẽ custome 1 nút back
      // dùng hàm navigator giống như mainMenu
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MainMenu())
            );
        }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
        title: const Text('Danh sách món ăn', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Thịt chó đóng hộp',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}