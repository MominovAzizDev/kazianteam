import 'package:flutter/material.dart';

class CardLearningWidget extends StatelessWidget {
  final String title;
  final String description;
  final String level;
  final String duration;
  final String lessons;
  final double rating;
  final double progress;
  final VoidCallback onContinue;

  const CardLearningWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.level,
    required this.duration,
    required this.lessons,
    required this.rating,
    required this.progress,
    required this.onContinue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final p = progress.clamp(0.0, 1.0);

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 0,
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    level,
                    style: TextStyle(fontSize: 12, color: Colors.black87),
                  ),
                ),
              ],
            ),

            SizedBox(height: 8),

            Text(
              description,
              style: TextStyle(color: Colors.black54, fontSize: 13),
            ),

            SizedBox(height: 12),

            Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                  duration,
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
                SizedBox(width: 12),
                Icon(Icons.menu_book_outlined, size: 16, color: Colors.grey),
                SizedBox(width: 4),
                Text(
                  lessons,
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
                SizedBox(width: 12),
                Icon(Icons.star, size: 16, color: Colors.amber),
                SizedBox(width: 4),
                Text(
                  rating.toString(),
                  style: TextStyle(color: Colors.black54, fontSize: 12),
                ),
              ],
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Progress",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
                Text(
                  "${(p * 100).toInt()}%",
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
            SizedBox(height: 6),
            LinearProgressIndicator(
              value: p,
              minHeight: 8,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: onContinue,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade600,
                  padding: EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                icon: Icon(Icons.play_arrow, color: Colors.white),
                label: Text("Continue", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
