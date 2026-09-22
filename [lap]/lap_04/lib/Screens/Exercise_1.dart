import 'package:flutter/material.dart';

class Exercise1 extends StatelessWidget {
  const Exercise1({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 1 - Core Widgets')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome to Flutter UI',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 12),
            Icon(Icons.video_file, size: 48),
            SizedBox(height: 12),
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/d/d1/Th%E1%BB%8Bt_ch%C3%B3.JPG?utm_source=vi.wikipedia.org&utm_campaign=index&utm_content=original',
            ),
            Card(child: ListTile(
                leading: Icon(Icons.star),
                title: Text('Món ăn truyền thống'),
                subtitle: Text('Đây là món ăn trong tác phẩm "Trẻ con không ăn được thịt chó" của cố nhà văn Nam Cao'),
            )
            ),
          ],
        ),
      ),
    );
  }
}
