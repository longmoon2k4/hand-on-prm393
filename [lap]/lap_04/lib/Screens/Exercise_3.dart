import 'package:flutter/material.dart';
import 'package:lap_04/model/Human.dart';

class Exercise3 extends StatelessWidget {
  final List<Human> humans;
  const Exercise3({super.key, required this.humans});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text('Exercise 3 - Layout Demo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Áp dụng khoảng cách 16px xung quanh body
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0), // Khoảng cách 16px giữa Text và ListView
              child: Center(
                child: Text(
                  'Chân mệnh thiên tử',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: humans.length,
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.only(bottom: 8.0), // Khoảng cách 8px giữa các Card
                  child: Card(
                    elevation: 2,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0), // Khoảng cách bên trong Card (nếu cần)
                      child: ListTile(
                        leading: CircleAvatar(child: Text(humans[index].name[0])),
                        title: Text(humans[index].name),
                        subtitle: Text(humans[index].genre),
                        trailing: Text(humans[index].age.toString()),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
