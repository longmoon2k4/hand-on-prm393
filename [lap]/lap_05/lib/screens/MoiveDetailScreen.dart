//      ____            _ _        ____
//     / ___| _ __ ___ (_) | ___  |  _ \  _____   __
//     \___ \| '_ ` _ \| | |/ _ \ | | | |/ _ \ \ / /
//      ___) | | | | | | | |  __/ | |_| |  __/\ V /
//     |____/|_| |_| |_|_|_|\___| |____/ \___| \_/
//

import 'package:flutter/material.dart';
import 'package:lap_05/model/movie.dart';

class MoiveDetailScreen extends StatefulWidget {
  final Movie movie;
  const MoiveDetailScreen({super.key, required this.movie});

  @override
  State<MoiveDetailScreen> createState() => _MoivedetailscreenState();
}

class _MoivedetailscreenState extends State<MoiveDetailScreen> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.movie.title)),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Wrap(
              spacing: 6.0,
              runSpacing: 4.0,
              children: widget.movie.genres.map((genre) {
                return Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.redAccent.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.redAccent),
                  ),
                  child: Text(
                    genre,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.redAccent.shade400,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            Text(
              widget.movie.overview,
              style: const TextStyle(fontSize: 15, height: 1.5),
            ),
            const SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildActionButton(
                  icon: isFavorite ? Icons.favorite : Icons.favorite_outlined,
                  label: isFavorite ? 'Đã thích' : 'Thích',
                  color: isFavorite ? Colors.redAccent : Colors.black54,
                  onTap: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                ),
                _buildActionButton(
                  icon: Icons.share,
                  label: 'Chia sẻ',
                  color: Colors.black54,
                  onTap: () {},
                ),
                _buildActionButton(
                  icon: Icons.download,
                  label: 'Tải xuống',
                  color: Colors.black54,
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Trailers',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            ListView.builder(
              shrinkWrap: true,
              itemCount: widget.movie.trailers.length,
              itemBuilder: (context, index) {
                final trailer = widget.movie.trailers[index];
                return ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: const Icon(Icons.play_circle_fill, color: Colors.black54, size: 32), //[cite: 4]
                  title: Text(trailer.title, style: const TextStyle(fontWeight: FontWeight.w500)), //[cite: 4]
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildActionButton({required IconData icon, required String label, required Color color, required VoidCallback onTap}){
  return InkWell(
    onTap: onTap,
    child: Column(
      children: [
        Icon(icon, color: color, size: 28),
    const SizedBox(height: 4),
    Text(label, style: TextStyle(color: color, fontSize: 13)),
    ],
    ),
  );
}
