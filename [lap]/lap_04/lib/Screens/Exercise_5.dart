import 'package:flutter/material.dart';

class Exercise5 extends StatefulWidget {
  const Exercise5({super.key});

  @override
  State<Exercise5> createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise5> {
  bool _isSwitched = false;
  DateTime? _selectedDate;

  // Dữ liệu mẫu giống hệt ảnh[cite: 2]
  final List<String> movies = ['Movie A', 'Movie B', 'Movie C', 'Movie D']; //[cite: 2]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('Exercise 5 – Common UI'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Giao diện mẫu theo ảnh (Task 1)[cite: 2]
            const Text(
              'Correct ListView inside Column using Expanded', //[cite: 2]
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
            const SizedBox(height: 16),

            // 1. Fix ListView inside Column bằng Expanded[cite: 2]
            Expanded(
              child: ListView.builder(
                itemCount: movies.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: const Icon(Icons.movie_creation, color: Colors.grey), //[cite: 2]
                    title: Text(movies[index]), //[cite: 2]
                  );
                },
              ),
            ),

            const Divider(height: 32),

            // 2. Fix overflow bằng SingleChildScrollView[cite: 2]
            const Text('2. Fix Overflow:', style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  8,
                      (index) => Container(
                    margin: const EdgeInsets.only(right: 8),
                    padding: const EdgeInsets.all(12),
                    color: Colors.blue.shade100,
                    child: Text('Khối $index'),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // 3. Fix state update issue bằng setState()[cite: 2]
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('3. Fix State Update:', style: TextStyle(fontWeight: FontWeight.bold)),
                Switch(
                  value: _isSwitched,
                  onChanged: (value) {
                    setState(() {
                      _isSwitched = value; // Cập nhật biến trong setState[cite: 2]
                    });
                  },
                ),
              ],
            ),

            // 4. Fix DatePicker build context errors[cite: 2]
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('4. Fix DatePicker:', style: TextStyle(fontWeight: FontWeight.bold)),
                ElevatedButton(
                  onPressed: () async {
                    // Truyền đúng tham số context từ valid widget tree[cite: 2]
                    final date = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030),
                    );
                    if (date != null) {
                      setState(() {
                        _selectedDate = date;
                      });
                    }
                  },
                  child: Text(
                      _selectedDate == null
                          ? 'Chọn ngày'
                          : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}'
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}