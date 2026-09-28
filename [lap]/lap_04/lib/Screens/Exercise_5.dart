import 'package:flutter/material.dart';

class Exercise5 extends StatefulWidget {
  const Exercise5({super.key});

  @override
  State<Exercise5> createState() => _Exercise5State();
}

class _Exercise5State extends State<Exercise5> {
  // Biến cho Fix State
  bool _isSwitched = false;
  // Biến cho Fix DatePicker
  DateTime? _selectedDate;
  // Dữ liệu mẫu cho Fix ListView
  final List<String> _items = List.generate(15, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Exercise 5 - Debug & Fix')),
      // Dùng Column làm gốc để bọc các bài test
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ==========================================
          // 1. FIX OVERFLOW (Tràn màn hình)
          // ==========================================
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '1. Fix Overflow (Vuốt ngang để xem):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          // FIX: Bọc SingleChildScrollView để các khối ngang không bị tràn vạch vàng đen
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                10,
                (index) => Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    'Khối $index',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const Divider(height: 24),

          // ==========================================
          // 2. FIX STATE UPDATE (Lỗi UI bị đơ)
          // ==========================================
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '2. Fix State (Quên gọi setState):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          SwitchListTile(
            title: Text('Trạng thái: ${_isSwitched ? "BẬT" : "TẮT"}'),
            value: _isSwitched,
            onChanged: (bool value) {
              // FIX: Phải bọc trong setState để Flutter vẽ lại UI
              setState(() {
                _isSwitched = value;
              });
            },
          ),
          const Divider(height: 24),

          // ==========================================
          // 3. FIX DATEPICKER (Lỗi sai BuildContext)
          // ==========================================
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '3. Fix DatePicker Context:',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final now = DateTime.now();
                    // FIX: Truyền đúng biến 'context' của hàm build hiện tại vào
                    final DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: _selectedDate ?? now,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2030),
                    );
                    if (pickedDate != null) {
                      setState(() {
                        _selectedDate = pickedDate;
                      });
                    }
                  },
                  child: const Text('Mở Lịch'),
                ),
                Text(
                  _selectedDate == null
                      ? 'Chưa chọn ngày'
                      : '${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}',
                ),
              ],
            ),
          ),
          const Divider(height: 24),

          // ==========================================
          // 4. FIX LISTVIEW INSIDE COLUMN (Lỗi unbounded height)
          // ==========================================
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '4. Fix ListView in Column (Dùng Expanded):',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
          // FIX: Bắt buộc bọc Expanded để ListView chỉ chiếm phần diện tích còn lại của màn hình, tránh lỗi đỏ màn hình
          Expanded(
            child: ListView.builder(
              itemCount: _items.length,
              itemBuilder: (context, index) {
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 4,
                  ),
                  child: ListTile(
                    leading: const Icon(Icons.bug_report, color: Colors.red),
                    title: Text(_items[index]),
                    trailing: const Icon(Icons.check, color: Colors.green),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
